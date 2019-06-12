@javascript
Feature: Create and delete tax On Backoffice

Background:
Given i access moka backoffice

Scenario Outline: Create 5 Taxes
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > Taxes
Then i create tax with <tax_name> with <amount>
And i should see item with tax <tax_name>

Examples:
| tax_name | amount |
| 1 | 5 |
| 2 | 10 |
| 3 | 15 |
| 4 | 20 |
| 5 | 25 |

Scenario Outline: Delete tax after create it
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > Taxes
Then i choose tax with <tax_name>
Then i click trash button icon
And i click delete on pop up menu
Then i should not see tax <tax_name>

Examples:
| tax_name | amount |
| 1 | 5 |
| 2 | 10 |
| 3 | 15 |
| 4 | 20 |
| 5 | 25 |
