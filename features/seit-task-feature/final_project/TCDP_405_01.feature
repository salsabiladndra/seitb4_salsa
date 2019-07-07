@javascript
Feature: Table management - Billing subscription

Scenario: Go to account setting and choose "Billing"
Given i access moka backoffice
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose account settings  > Billing
Then i should see current plan, active outlet and feature subscription
