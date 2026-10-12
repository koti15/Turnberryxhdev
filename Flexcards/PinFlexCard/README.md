# PIN FlexCard prototype
This is an LWC starter, not an OmniStudio FlexCard export.
Copy all three securePinField files to force-app/main/default/lwc/securePinField/.
Deploy the LWC to your Salesforce org, then add it to the existing FlexCard using its Custom LWC integration if supported.
The existing PIN is intentionally never returned or revealed.
New PIN and confirmation are masked; 4–6 digit validation is client-side only.
Saving is not implemented. Add a security-reviewed Apex endpoint for server-side authorization and hashing before using real PINs.
Never expose actual PIN values in FlexCard data, logs, browser events, or GitHub.
