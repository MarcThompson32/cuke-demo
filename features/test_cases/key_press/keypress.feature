@key_press
Feature: Keyboard keys pressed

Scenario Outline: Various key presses
Given I am on the demo key press test page
When I press <key> key
Then I should see the message <verification> displayed

Examples:
	|key|verification|
	|escape|ESCAPE|
	|cancel|CANCEL|
	|tab|TAB|
	|page_up|PAGE_UP|
	|page_down|PAGE_DOWN|
	|space|SPACE|
	|alt|ALT|
	|control|CONTROL|
	|help|HELP|
	|left_control|CONTROL|
	|left_shift|SHIFT|
	|left_alt|ALT|
	|f1|F1|
	|f2|F2|
	|f3|F3|
	|f4|F4|