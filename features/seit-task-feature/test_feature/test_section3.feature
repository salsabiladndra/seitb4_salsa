@javascript
Feature: Moka homepage

Scenario: access container Moka Capital
Given i access to moka homepage
Then i should see container with Head over heels to get your business growing? text
And i click button Guide me how
Then i should redirect to capitals  page
