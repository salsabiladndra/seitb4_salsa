@javascript
Feature: Table management - Billing subscription

Scenario: check subscription status table management
Given i access staging moka backoffice
Then i should see dashboard Page
And i choose account settings  > Billing
Then i go to billing history
And i should see you don't have any invoice yet
