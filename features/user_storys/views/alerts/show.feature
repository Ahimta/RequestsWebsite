Feature: users can see alerts

Scenario Outline:
	Given I am logged in as <user>
		And 3 alert exists
		And I am on the <page> alert page
	Then I should see the following: <should_see>

Examples:
	|	user			|	page	|	should_see		|
	|	admin			|	first	|	title1, body1	|
	|	admin			|	second	|	title2, body2	|
	|	admin			|	third	|	title3, body3	|
	|	regular user	|	first	|	title1, body1	|
	|	regular user	|	second	|	title2, body2	|
	|	regular user	|	third	|	title3, body3	|
