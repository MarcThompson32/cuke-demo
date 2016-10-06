@right_click

Feature: Right click testing

Scenario: Verify hot spot
	Given I am on the context menu page
	Then I should see the context menu hotspot

Scenario: Verify right click menu
	Given I am on the context menu page
	When I right click context menu hot spot
	And I select the 'the-internet' option
	Then I should see the right click menu dialog

Scenario: Verify right click menu dialog is not displayed
	Given I am on the context menu page
	Then I should not see the right click menu dialog
