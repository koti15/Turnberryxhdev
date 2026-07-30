# FlexCard Validation — Working Org

Validation screenshots captured in XHDev1 for the Related Cases FlexCard.

## Screenshot sequence

1. `flexcard-validation-part-1-working-org.jpeg`
   - Related Cases table returns two records from different source systems.
   - Salesforce case and CSD legacy case appear in the same unified list.

2. `flexcard-validation-part-2-working-org.jpeg`
   - Salesforce case detail modal opens successfully.
   - Core case fields and claims section are displayed.

3. `flexcard-validation-part-3-working-org.jpeg`
   - Salesforce case claims, notes, and routing history sections are displayed.

4. `flexcard-validation-part-4-working-org.jpeg`
   - Salesforce routing history displays multiple historical work-basket/owner entries.

5. `flexcard-validation-part-5-working-org.jpeg`
   - Legacy CSD case detail modal opens successfully.
   - Core case fields are populated from the unified legacy response.

6. `flexcard-validation-part-6-working-org.jpeg`
   - Legacy case claims, notes, and routing-history sections render.
   - Empty child collections display their headers without breaking the modal.

7. `flexcard-validation-part-7-working-org.jpeg`
   - Team follow-up screenshot showing a report that fields were not appearing in an earlier validation attempt.

## Validation summary

- The Related Cases FlexCard consumes the unified `cases[]` response.
- Salesforce and legacy CSD records appear together in the table.
- The Details action opens the record-detail modal for both source systems.
- Salesforce mock data demonstrates populated claims, notes, and routing history.
- Legacy CSD data demonstrates the same common layout while safely handling empty child arrays.
