@table
Feature: Table testing

Scenario: Table page object
Given I am on the demo table test page
And I wait 5 seconds
Then I should see table 1

Scenario: Get the number of table columns
Given I am on the demo table test page
Then I should see 6 table columns

Scenario: Get the number of table rows
Given I am on the demo table test page
Then I should see 4 table rows

Scenario Outline: Get the column names
Given I am on the demo table test page
Then I should see "<column_name>" column

Examples:
|column_name|
| Last Name |
| First Name |
| Email |
| Due |
| Web Site|
|Action|

Scenario Outline: Get column data for column 1 (Last Name)
Given I am on the demo table test page
Then I should see <data> in the Last Name column 

Examples:
|data|
|Smith|
|Bach|
|Doe|
|Conway|


Scenario: Sort by last name
Given I am on the demo table test page
When I sort the table by the first column
Then I should see the table sorted in ascending order by first column

Scenario: Sort by first name
Given I am on the demo table test page
When I sort the table by the second column
Then I should see the table sorted in ascending order by second column
	
Scenario: Sort by email
Given I am on the demo table test page
When I sort the table by the third column
Then I should see the table sorted in ascending order by third column

Scenario: Sort by due
Given I am on the demo table test page
When I sort the table by the fourth column
Then I should see the table sorted in ascending order by fourth column

Scenario: Sort by web site
Given I am on the demo table test page
When I sort the table by the fifth column
Then I should see the table sorted in ascending order by fifth column