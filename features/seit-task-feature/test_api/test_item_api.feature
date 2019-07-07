@javascript
Feature: as a seit candidate, i should create item by hit api


Scenario: hit api using curl
Given i access moka backoffice
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > Gratuity
Then i hit api using curl
