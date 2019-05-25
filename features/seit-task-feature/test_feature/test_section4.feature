@javascript
Feature: Moka homepage


Scenario: access container Business Type > coffee shops
Given i access to moka homepage
When i see container with One Point of Sale for Businesses of All Types and Sizes text
Then i click card coffee shops
And i should redirect to coffee_shop page
