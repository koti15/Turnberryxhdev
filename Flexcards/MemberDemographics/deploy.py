#!/usr/bin/env python3
"""Create a draft FlexCard using an existing Salesforce CLI login."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
CARD_NAME = "XHMemberDemographics"

def cli_json(sf, org, *args):
    command = [sf, *args, "--target-org", org, "--json"]
    result = subprocess.run(command, text=True, capture_output=True)
    try:
        value = json.loads(result.stdout)
    except json.JSONDecodeError:
        raise RuntimeError(result.stderr.strip() or "Salesforce CLI returned non-JSON output.")
    if result.returncode or value.get("status", 0):
        raise RuntimeError(value.get("message", "Salesforce CLI command failed."))
    return value.get("result", value)

def api(sf, org, path, method="GET", body=None):
    args = ["api", "request", "rest", path, "--method", method,
            "--header", "Content-Type: application/json"]
    # File payload also avoids Windows command-line length limits.
    with tempfile.TemporaryDirectory(prefix="xh-flexcard-") as directory:
        if body is not None:
            path_to_body = Path(directory) / "body.json"
            path_to_body.write_text(json.dumps(body), encoding="utf-8")
            args += ["--body", "@" + str(path_to_body)]
        result = cli_json(sf, org, *args)
    if isinstance(result, dict) and "statusCode" in result:
        status = result["statusCode"]
        result = result.get("body", {})
        if isinstance(result, str):
            result = json.loads(result) if result else {}
        if status >= 400:
            raise RuntimeError("Salesforce HTTP " + str(status) + ": " + json.dumps(result))
    if isinstance(result, list):
        raise RuntimeError(json.dumps(result))
    return result

def writable_payload(describe, payload):
    fields = {field["name"]: field for field in describe["fields"]}
    missing = [key for key in payload if key not in fields]
    readonly = [key for key in payload if key in fields and not fields[key]["createable"]]
    if missing or readonly:
        raise RuntimeError("Payload does not match writable org fields. Missing: "
                           + str(missing) + "; read-only: " + str(readonly))
    return payload

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("target_org", help="Existing sf CLI org alias or username")
    parser.add_argument("--runtime", choices=["core", "omnistudio", "vlocity_ins", "vlocity_cmt"], default="core",
                        help="core uses OmniUiCard; other choices use the named managed-package namespace")
    args = parser.parse_args()
    sf = shutil.which("sf") or shutil.which("sf.cmd")
    if not sf:
        raise RuntimeError("Install Salesforce CLI and log in to your sandbox first.")
    config = json.loads((HERE / "card-definition.json").read_text(encoding="utf-8"))
    sample = json.loads((HERE / "custom-data.json").read_text(encoding="utf-8"))
    if not isinstance(sample, list) or not sample:
        raise RuntimeError("custom-data.json must contain at least one record in an array.")
    for row in sample:
        row["middleName"] = ""
        row["legacyId"] = ""
    config["dataSource"]["value"]["body"] = json.dumps(sample)
    core = json.loads((HERE / "omni-ui-card.json").read_text(encoding="utf-8"))
    core["PropertySetConfig"] = json.dumps(config)
    core["DataSourceConfig"] = json.dumps({"dataSource": config["dataSource"]})
    if args.runtime == "core":
        object_name = "OmniUiCard"
        payload = core
    else:
        prefix = args.runtime + "__"
        object_name = prefix + "VlocityCard__c"
        payload = {
            "Name": CARD_NAME,
            prefix + "Author__c": "XH",
            prefix + "Version__c": 1,
            prefix + "Active__c": False,
            prefix + "Type__c": "Flex",
            prefix + "IsChildCard__c": False,
            prefix + "Definition__c": json.dumps(config)
        }
    describe = cli_json(sf, args.target_org, "sobject", "describe", "--sobject", object_name)
    if not describe.get("createable"):
        raise RuntimeError(object_name + " is unavailable for creation with this user.")
    payload = writable_payload(describe, payload)
    for field in describe["fields"]:
        if field["name"] in payload and field.get("restrictedPicklist"):
            allowed = {item["value"] for item in field.get("picklistValues", []) if item["active"]}
            if payload[field["name"]] not in allowed:
                raise RuntimeError("Unsupported " + field["name"] + " value: " + str(payload[field["name"]]))
    query = "SELECT Id FROM " + object_name + " WHERE Name = '" + CARD_NAME + "' LIMIT 1"
    found = cli_json(sf, args.target_org, "data", "query", "--query", query)
    if found.get("records"):
        raise RuntimeError(CARD_NAME + " already exists. Clone a new version in Designer; existing cards were not changed.")
    result = api(sf, args.target_org, "/services/data/v67.0/sobjects/" + object_name, "POST", payload)
    if result.get("success") is not True or not result.get("id"):
        raise RuntimeError("Card creation was not confirmed: " + json.dumps(result))
    card_id = result["id"]
    verify = api(sf, args.target_org, "/services/data/v67.0/sobjects/" + object_name + "/" + card_id)
    active_key = "IsActive" if args.runtime == "core" else args.runtime + "__Active__c"
    if verify.get("Name") != CARD_NAME or verify.get(active_key) is not False:
        raise RuntimeError("Created card did not match the expected draft. Inspect record " + card_id)
    print("Created draft " + CARD_NAME + ": " + card_id)
    print("Open FlexCard Designer, Preview, Save, and Activate to generate its LWC.")
    print("No existing Lightning page or parent FlexCard was changed.")

if __name__ == "__main__":
    try:
        main()
    except (RuntimeError, OSError, ValueError) as error:
        print("Deployment stopped: " + str(error), file=sys.stderr)
        sys.exit(1)
