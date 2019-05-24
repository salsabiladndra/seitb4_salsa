@javascript
Feature: Moka homepage

Scenario: access container "Claim Your Free Trial Now"
Given i access to moka homepage
Then i should see container with Grow your business with Moka now text
And i click Claim Your Free Trial Now button
Then i should redirect to "https://backoffice.mokapos.com/register"
