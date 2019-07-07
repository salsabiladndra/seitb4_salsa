@javascript
Feature: Table management - Billing subscription

Scenario: pay subscription
Given i access moka backoffice
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose account settings  > Billing
Then i click pay button
And i should direct to midtrans page
Then i choose atm/bank transfer > BCA > lihat no rekening
And i visit simulator sandbox and input norek
