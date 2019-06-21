@javascript

Feature: As a SEIT candidate, i should create role and slot employee by hit API


Scenario: Create role and slot by hit api using curl
Given i access moka backoffice
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose Employees > Employee Access
Then i hit api using curl to create employee role
And i go to employee slots
Then i hit api  using curl to create employee slot
And i should see staff that successfully created
