@dynamic_page_load
Feature: Dynamic page load

Scenario: Page is not rendered
Given I am on the dynamic page load page
Then I should see that the page is not rendendered

Scenario: Wait for page to load 
Given I am on the dynamic page load page
When I initiate the page redraw
Then I should see that the page is rendendered

Scenario: Hard wait for page to reload 
Given I am on the dynamic page load page
When I initiate the page redraw
And I wait 10 seconds
Then I should see that the page is rendendered