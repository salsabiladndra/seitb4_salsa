@javascript
Feature: Moka homepage

Scenario: access container "choice of payment"
Given i access to moka homepage
Then i should see container with Offer your customers a new choice of payment text
And i click Guide me how
Then i should redirect to payments page
