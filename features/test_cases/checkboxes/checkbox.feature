@checkbox
Feature: Check check boxes

Scenario: Check box status
Given I am on the demo checkbox test page
And both checkboxes are unchecked
Then I should see check box 1 is unchecked
And I should see check box 2 is unchecked

Scenario: Check a check box
Given I am on the demo checkbox test page
And both checkboxes are unchecked
When I check check box 1
Then I should see check box 1 is checked

Scenario: Check and uncheck a check box
Given I am on the demo checkbox test page
And both checkboxes are unchecked
When I check check box 1
And I check check box 2
Then I should see check box 1 is checked
And I should see check box 2 is checked