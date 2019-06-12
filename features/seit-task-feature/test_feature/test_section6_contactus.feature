@javascript
Feature: Moka homepage

Scenario: access container Contact Us
Given i access to moka homepage
Then i should see container with Got something in mind? text
And i click button Learn More
Then i should redirect to contact us page
