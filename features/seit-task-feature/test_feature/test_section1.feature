@javascript
Feature: Moka homepage

Scenario: access container "Struggling with managing your business?"
Given i access to moka homepage
Then i should see container with Struggling with managing your business? text
And i click learn more
Then i should direct to POS page
