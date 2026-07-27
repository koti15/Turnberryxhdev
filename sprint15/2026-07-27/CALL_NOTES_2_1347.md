# Call Notes 2 – Story 1347

- Confirmed the Data Transform is mainly needed for the pre-migration case lookup, because the Salesforce response is already closer to the required FlexCard shape.
- The legacy/mock API returns a much larger payload containing many fields that are not needed by the FlexCard.
- The legacy response should be passed into a Data Transform and converted into the same JSON structure as the Salesforce case output.
- The goal is for Salesforce cases and legacy cases to use the same node names and property names before they are combined.
- First identify only the legacy API fields that are needed by the FlexCard, then map those fields into the unified output model.
- The transform mapping currently starts from the interactions node and maps values such as caller information name into the simpler output expected by the FlexCard.
- The transform still needs to be completed for all relevant fields.
- The expected sequence is:
  1. Get the legacy/pre-migration API response.
  2. Pass the full legacy response into the Data Transform.
  3. Transform it into the same output shape as the Salesforce case-by-claim IP.
  4. Use a List Action to combine the transformed legacy output with the Salesforce output.
  5. Send the combined response to the FlexCard.
- The Salesforce output is currently being assembled using Set Values and is intended to represent the consolidated case model.
- The pre-migration lookup is currently returning all cases instead of only cases associated with the requested claim.
- The claim ID is expected to come from the claims detail page/orchestrator IP and be passed into the related-cases IP.
- `FilteredLookupAction` and `MockIntegrationGateway` are being used in the mock flow.
- The mock response must be filtered based on the requested claim ID before or as part of the legacy transformation flow.
- The remaining work is to validate where the claim ID filter should be applied, make sure only matching legacy cases are retained, and finish the Data Transform mappings so the output matches the Salesforce case model.
