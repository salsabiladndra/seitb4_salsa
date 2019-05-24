@javascript
Feature: Moka homepage

Scenario: access footer "Support"
Given i access to moka homepage
And i click Support Center link
Then i should redirect to "https://mokapos.com/en/support"
