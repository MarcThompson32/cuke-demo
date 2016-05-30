@key_press
Feature: Keyboard keys pressed

Scenario: Spacebar
Given I am on the demo key press test page
When I press "<space>" key
Then I should see the message "You entered: SPACE" displayed

Scenario: ALT
Given I am on the demo key press test page
When I press ":alt" key
Then I should see the message "You entered: ALT" displayed

Scenario Outline: Key press
Given I am on the demo key press test page
When I press <key> key
Then I should see the message <verification> displayed

Examples:
	|key|verification|
	|cancel|CANCEL|
	|tab|TAB|
	|alt|ALT|
	|control|CONTROL|
	|help|HELP|
	|left_control|CONTROL|
	|left_shift|SHIFT|
	|left_alt|ALT|