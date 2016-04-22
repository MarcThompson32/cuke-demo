@login @text_field @button

Feature: User login

Scenario: Invalid user name
Given I am on the login test page
When I log in with invalid user name credentials
Then I should see the invalid login message

Scenario: Invalid password
Given I am on the login test page
When I log in with invalid password credentials
Then I should see the invalid login message

Scenario: Valid login
Given I am on the login test page
When I log in with valid credentials
Then I should see the succesful login message
