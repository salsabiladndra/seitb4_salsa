@javascript
Feature: Create and delete Item On Backoffice


Background:
Given i access moka backoffice

Scenario Outline: Create 5 Items
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > item Library
Then i create item with <item_name> with <price>
Then i click save
And i should see item with item <item_name>


Examples:
| item_name | price |
| 1 | 10000 |
| 2 | 20000 |
| 3 | 30000 |
| 4 | 40000 |
| 5 | 50000 |


Scenario Outline: Delete items after create it
When i fill email and password
And i click sign in
Then i should see dashboard Page
And i choose library > item Library
Then i choose item with <item_name>
Then i click trash button
And i click delete on pop up
Then i should not see item <item_name>

Examples:
| item_name | price |
| 1 | 10000 |
| 2 | 20000 |
| 3 | 30000 |
| 4 | 40000 |
| 5 | 50000 |
