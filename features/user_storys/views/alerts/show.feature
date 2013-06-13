Feature: users can see alerts

Scenario Outline:
	Given an alert exists
		And I am on the first alert page
	Then I should see the following: <should_see>

Examples:
	|	should_see		|
	|	title2, body2	|
	|	title0, body0	|
