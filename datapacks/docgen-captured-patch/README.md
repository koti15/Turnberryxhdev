# Captured configuration correction

This source updates the existing inactive draft in place through Salesforce SObject API using an anonymous Apex transaction. It creates no skeleton or additional draft version. `patch.json` contains exact target record IDs, logical component identities and the fields to update. `deploy.apex` asserts the selected org ID and inactive draft before applying the patch atomically.

Target: myProdOrg, org 00Dbm00000phCerEAE. Existing draft: Docgen / SendCommunication / English v4, 0jNbm000000gie9EAA. The Type differs deliberately from the photographed CNC reference to preserve the established reconstruction identity. IPs use existing latest inactive versions; Data Mappers update existing items by source/output pair. No reference component or unrelated staged work is replaced.

Deploy from this checkout:

```powershell
sf apex run --target-org myProdOrg --file datapacks/docgen-captured-patch/deploy.apex --json
```

This is partial configuration source, not a complete reference export. Missing settings are listed in Docgen/deployment/captured-audit.json and CODEX_HANDOFF.md. Unspecified properties and execution gating are preserved. All operations are updates; no activation, Preview, document generation, file upload or delivery occurs.

The builder uses configuration-only snapshots from the primary session workspace. It applies captured expressions exactly, including the subscription token casing, and stores the captured `isDocumentUploaded` literal as text `false`, without coercing it to Boolean false. Nine summary-only default assignments remain unresolved and are not written. Existing source contains guessed scaffold defaults from earlier work; preserving them does not establish they match the reference.
