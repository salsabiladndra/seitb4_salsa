@javascript
Feature: Table management - Billing subscription

Scenario: checking dropdown menu on billing cycle
Given i access moka backoffice
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose account settings  > Billing
Then i click cancel subscription > proceed
