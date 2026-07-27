# Sprint 15 - 2026-07-27 reference notes

These screenshots were collected as technical reference for the related-cases work, particularly Story 1350.

## Contents

1. MockIntegrationGateway action registry and routing.
2. FilteredLookupAction overview and constructor.
3. FilteredLookupAction execution and filtering logic.
4. OmniStudio Integration Procedure test response for claimId `EOB001`.
5. Legacy case payload fields including interactions, service intents, claims, member information, provider information, source system, subject, description, cobRequests, and objectType.

## Expected implementation flow

FlexCard -> Orchestrator -> Integration Procedure -> MockIntegrationGateway -> FilteredLookupAction -> Mock data -> JSON response -> Pub/Sub -> UI

## Codex guidance

Use the screenshots only as supporting context. Prefer the actual Apex classes, metadata, Integration Procedure export, and test classes from the repository when implementing changes. First trace the existing implementation and list the exact files requiring modification before changing code.
