@text_field @button
Feature: Retrieve password

Scenario: Retrieve password
Given I am on the forgot password page
When I request my password
Then I should see an email sent confirmation