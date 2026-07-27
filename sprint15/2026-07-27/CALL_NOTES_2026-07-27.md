Call Notes

Need to make a change in Filtered Lookup so that only the related case for the requested claim is returned.
Currently, when a single claim is provided, the mock gateway returns the complete mock data instead of only the matching record.
Since this is mock data, don't spend a lot of time making the filtering sophisticated. Keep it simple.

Continue using Get Legacy Cases Mock.
Need to map the response to the Unified Case Model.

Since Salesforce cases and Legacy (Engine) cases will be displayed in the same table, both responses must conform to the same JSON model with the same property names.

The Get Legacy Cases Mock is already hitting the mock gateway correctly.

In List Cases, there appears to be no response transformation.
It currently looks like the legacy response is simply being mapped directly to cases.

The legacy response contains subscriberId and interactions.
Each interaction should not become one case.
Each serviceIntent should become its own case.
Information from the parent interaction should be copied onto the serviceIntent case object.
Need a transformer that converts the interaction structure into the unified case model.
Compare the legacy response JSON with the FlexCard response model.
The unified model should contain Member ID, Status, URL, Notes, Case Category, Open Description, Claim URL, System and List of Claims.
Cannot simply return the API response directly. A transformation layer is required.

Additional discussion:
Salesforce case number is converted into a URL. Legacy case number is also being converted into a URL.
Legacy cases do not have a Case URL.
During the transform for legacy cases, do not populate the Case URL. Pass null or an empty string.
If the URL field is empty, the data table renders plain text instead of a hyperlink.
Complete the legacy transformation, verify mappings and validate the FlexCard rendering.