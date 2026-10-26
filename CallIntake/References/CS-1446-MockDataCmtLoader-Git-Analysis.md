# CS-1446 — Mock data loader verified in Git (2026-10-26)

## Sources
- [MockDataCmtLoader.cls](../../force-app/main/default/classes/MockDataCmtLoader.cls)
- [IMockDataLoader.cls](../../force-app/main/default/classes/IMockDataLoader.cls)
- [MemberLookupAction XHDev1 screenshot transcription](CS-1446-MemberLookupAction-XHDev1-Investigation.md)

## Verified from repository
`MockDataCmtLoader.load(strategyName)` calls `getRecord(strategyName)`, which queries `MockData__mdt` by exact `DeveloperName` and reads `DataBody__c`. It deserializes `DataBody__c` as a JSON **array**, casts each item to a map, injects `__objectType` from `ObjectType__c`, and returns a list of maps. Missing metadata and malformed JSON throw `MockDataException`.

`IMockDataLoader` declares `List<Map<String,Object>> load(String strategyName)`.

## Implication for CS-1446
The loader can deserialize an array of canonical nested `submitted` / `adjudicated` maps without needing a loader change. However, the **observed** `MemberLookupAction` filters the *top-level* `subscriberId` and returns a `members` list. Canonical entries with `mockKey` and nested `submitted.subscriberId` will **not match** that current filter. A different handler or revised routing is required, subject to downstream compatibility analysis. The loader injects `__objectType`, which may need to be stripped before API-shape comparison.

## Still unknown
- Whether `HostMemberSearchV2` exists in XHDev1 and its current `DataBody__c`.
- Which IP version/branch should implement the new mock/live routing.
- Which downstream components expect `members` and flat fields.
- Whether a separate `getDatabySource` implementation exists elsewhere in the repo/org.

## Status
Technical analysis only; no Apex, metadata or IP changes made.
