# Docgen working instructions

Read Docgen/README.md before continuing discovery or development. Follow any applicable repository instructions.

## Evidence first

- Do not assume behavior from element labels, screenshots of lists, or earlier conversation.
- Inspect actual action properties, execution conditions, mappings, IP/Data Mapper definitions, Apex source, template tokens, and runtime input/output.
- Label each finding Confirmed, Unknown, or Proposed.
- Update the tracker after each completed discovery step.
- Use sanitized examples. Never commit credentials, session tokens, member/patient information, or production payloads.

## Canonical configuration and duplicate prevention

- Store new exact configuration in Docgen/spec/send-communication.partial.json once. Update existing entries by identity: elementName for actions/Set Values, name for Data Mappers, source/output pair for mappings.
- Merge repeated screenshot evidence into the same component entry; never append duplicate components or mappings.
- Other notes and status files should link to the canonical record instead of repeating new property tables.
- Keep unknown settings null with evidence gaps explicit. Saved status tracks capture progress, not org creation.

## Development stories

Create Docgen/stories/<story-id>.md when a real story is supplied. Record:
1. Requirement and acceptance criteria.
2. Verified current behavior and supporting evidence.
3. Affected components and dependencies.
4. Proposed change and actual implementation paths.
5. Validation scenarios, results, and generated output evidence.
6. Deployment scope and remaining work.

Keep executable Salesforce source in the existing project layout. Do not invent classes, mappings, templates or API calls to fill discovery gaps.

## Deployment

A request to track work is not a request to deploy.
Before executing a requested deployment:
- Identify the requested target org and verify authentication without exposing secrets.
- Inspect the project and confirm whether components use Salesforce metadata, OmniStudio DataPacks, or another supported format.
- Resolve the precise deployable files and dependencies.
- Run applicable validation and tests.
- Record the exact commit, target org identifier, deployment method, results and any manual steps under Docgen/deployment/.
- Never claim deployment success from documentation, a commit, or a validation-only run.
