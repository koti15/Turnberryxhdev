# Member Demographics FlexCard

Native OmniStudio FlexCard: `XHMemberDemographics`, author `XH`, draft version 1.
Recreates the Member Demographics section of the supplied screenshot. The surrounding Overview/Cases/Coverage tabs belong to the hosting page and are not part of this card.

## Deploy from your VS Code checkout

Run from the repository root with Python 3 and a recent Salesforce CLI. Replace `YOUR_SANDBOX_ALIAS` with your existing CLI login:

```sh
git pull origin main
python Flexcards/MemberDemographics/deploy.py YOUR_SANDBOX_ALIAS
```

The default runtime creates an `OmniUiCard` record. The script checks object/field permissions and existing cards before creation, then reads the new record back. It creates a draft only; it does not activate or change your page.

For a managed-package org, supply its installed namespace explicitly:

```sh
python Flexcards/MemberDemographics/deploy.py YOUR_SANDBOX_ALIAS --runtime omnistudio
```

Other supported namespaces: `vlocity_ins`, `vlocity_cmt`. Namespace/schema mismatches stop before creation. Do not select a namespace merely because its name resembles your app.

## Preview and activate

1. Open OmniStudio > FlexCards and find `XHMemberDemographics`.
2. Open in Designer. Confirm Setup > Data Source Type = Custom.
3. Preview the single sample record. If the Designer requires refreshing its field inventory, Save the Custom data source before Preview.
4. Check the blue MEMBER DEMOGRAPHICS header and the rows listed below.
5. Save and Activate in Designer to generate the runtime LWC.
6. Add the generated card to the intended Lightning page or parent container, then test as your MEA user.

The JSON is authored for deployment and has been checked locally. It has **not been imported, compiled, or visually verified in a Salesforce org here**. Preview and activation in your sandbox are the remaining validation steps. If your installed Designer normalizes older layout properties, save the card and inspect the preview before activation.

## Layout and data contract

| Row | Left | Middle | Right |
| --- | --- | --- | --- |
| 1 | FIRST NAME: `firstName` | MIDDLE NAME: blank | LAST NAME: `lastName` |
| 2 | RESIDENTIAL ADDRESS: `residentialAddress` | MAILING ADDRESS: `mailingAddress` | MAILING ADDRESS TYPE: `mailingAddressType` |
| 3 | MEMBER ID: `memberId` | LEGACY ID: blank | EPID: `epid` |
| 4 | SUBSCRIBER ID: `subscriberId` | | |

Desktop/tablet widths use three columns; small widths stack fields. Addresses accept newline characters. IDs are strings, preserving leading zeroes.

Middle Name and Legacy ID are deliberately unbound display slots. Their labels stay visible; their values stay empty even if data contains those keys. No API field mappings have been assumed.

`custom-data.json` is a one-record array with synthetic test values. Change its values before deploying. The script copies it into the Custom data source and forces the two blank keys to empty strings. Custom is static preview data, not a live API input. To connect your real member JSON later, replace the data source or pass matching data through your parent card configuration.

## Files

- `custom-data.json`: editable sample input.
- `card-definition.json`: native states, layout nodes, styles, field bindings, and Custom data source.
- `omni-ui-card.json`: standard-runtime create-record payload.
- `deploy.py`: Salesforce CLI deployment helper, with standard and managed runtime support.

## Test checklist

- One card appears for the sample input, with all ten labels in the expected order.
- Middle Name and Legacy ID display no value.
- Newline-separated addresses wrap without overlapping adjacent fields.
- Leading-zero IDs display unchanged.
- Save/Activate completes and the generated LWC renders on the target page.
- MEA users can view the card in the intended container.
- A second deployment stops when the named card exists. Use Designer to clone a new version for updates.

## Implementation references

- Salesforce native record template:
  https://github.com/forcedotcom/sf-skills/blob/main/skills/omnistudio-flexcard-generate/assets/omni-ui-card.json
- Custom data source:
  https://help.salesforce.com/s/articleView?id=sf.os_configure_a_data_source_on_a_flexcard_35864.htm&type=5
- CLI REST request implementation:
  https://github.com/salesforcecli/plugin-api/blob/main/src/commands/api/request/rest.ts
