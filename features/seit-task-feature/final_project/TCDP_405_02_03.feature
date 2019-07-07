@javascript
Feature: Table management - Billing subscription

Scenario: Canceled subscription
Given i access moka dev backoffice
Then i should see dashboard Page
And i choose settings  > Billing
Then i click cancel subscription
And i click cancel on pop up message > back main menu
Then i click cancel again and proceed by API
