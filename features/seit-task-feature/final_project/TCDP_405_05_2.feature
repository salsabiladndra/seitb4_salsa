@javascript
Feature: Table management - Billing subscription

Scenario: checking on button for active outlet
Given i access moka backoffice
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose account settings  > Billing
Then i click on button
