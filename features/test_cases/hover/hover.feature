@hover
Feature: Mouse hover

Scenario: Hover over first element
Given I am on the demo hover test page
When I hover over the first avatar
Then I should see the first avatar message

Scenario: Hover over second element
Given I am on the demo hover test page
When I hover over the second avatar
Then I should see the second avatar message

Scenario: Hover over third element
Given I am on the demo hover test page
When I hover over the third avatar
Then I should see the third avatar message

Scenario: No hover message
Given I am on the demo hover test page
Then I should not see any avatar message
