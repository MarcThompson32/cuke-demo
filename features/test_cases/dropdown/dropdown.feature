@dropdown
Feature: Dropdown

Scenario: Select first option
	Given I am on the demo dropdown test page
	When I select the first option
	Then I should see the first option is selected

Scenario: Select second option
	Given I am on the demo dropdown test page
	When I select the second option
	Then I should see the second option is selected

Scenario: Verify that option can be changed
	Given I am on the demo dropdown test page
	When I select the second option
	And I wait 5 seconds
	And I select the first option
	Then I should see the first option is selected

Scenario: Select a specific option
	Given I am on the demo dropdown test page
	When I select "Option 2" from the dropdown
	Then I should see "Option 2" selected

#Scenario: Select disabled option
#	Given I am on the demo dropdown test page
#	When I select the second option
#	And I wait 5 seconds
#	When I select "Please select an option" from the dropdown
#	Then I should see that "Please select an option" is not selectable