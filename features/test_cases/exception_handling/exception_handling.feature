@exception

Feature: Exception handling

Scenario: Login exception
Given I am on the login test page
When I log in with invalid credentials
Then I should see the invalid login message
