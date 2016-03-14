Feature: Java Script Alerts

Scenario: Java script alert recognition
Given I am on the java script alert test page
When I display a java script alert
Then I should see the java script alert

Scenario: Java script confirm alert recognition
Given I am on the java script alert test page
When I display a java script confirm alert
Then I should see the java script alert

Scenario: Java script prompt alert recognition
Given I am on the java script alert test page
When I display a java script prompt alert
Then I should see the java script alert

Scenario: Java script alert dismissal
Given I am on the java script alert test page
When I display a java script alert
And I cancel the java script alert
Then I should not see the java script alert

Scenario: Java script alert prompt dismissal
Given I am on the java script alert test page
When I display a java script prompt alert
And I cancel the java script alert
Then I should not see the java script alert

Scenario: Java script confirm dismissal
Given I am on the java script alert test page
When I display a java script confirm alert
And I cancel the java script alert
Then I should not see the java script alert

Scenario: Java script alert Ok
Given I am on the java script alert test page
When I display a java script alert
And I accept the alert
Then I should not see the java script alert

Scenario: Java script confirm alert Ok
Given I am on the java script alert test page
When I display a java script confirm alert
And I accept the alert
Then I should not see the java script alert

Scenario: Java script prompt alert recognition
Given I am on the java script alert test page
When I display a java script prompt alert
And I accept the alert
Then I should not see the java script alert
