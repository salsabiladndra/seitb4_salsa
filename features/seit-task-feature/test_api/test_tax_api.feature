@javascript

Feature: Create tax by hit API


Scenario: Create Taxes by hit api using curl
Given i access moka backoffice
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > Taxes
Then i hit api tax using curl to create tax
