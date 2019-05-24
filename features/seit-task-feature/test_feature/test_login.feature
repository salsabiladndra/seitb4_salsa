@javascript
Feature: Access Backoffice

  Scenario: Login with true credentials
  Given i navigate into backoffice
  Then i fill "email" and "password"
  When i click button "Sign In"
  And i should see Dashboard Page
