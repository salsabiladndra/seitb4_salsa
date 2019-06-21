@javascript
Feature: Create and delete gratuity  On Backoffice

Background:
Given i access moka backoffice

Scenario Outline: Create 5 Gratuity
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > Gratuity
Then i create gratuity with <grat_name> with <amount>
And i should see item with Gratuity <grat_name>

Examples:
| grat_name | amount |
| 1 | 5 |
| 2 | 10 |
| 3 | 15 |
| 4 | 20 |
| 5 | 25 |


Scenario Outline: Delete gratuity after create it
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > Gratuity
Then i choose gratuity with <grat_name>
Then i click trash icon
And i click delete on pop up menu gratuity
Then i should not see gratuity <grat_name>

Examples:
| grat_name | amount |
| 1 | 5 |
| 2 | 10 |
| 3 | 15 |
| 4 | 20 |
| 5 | 25 |
