Feature: AlertsController#show

Background:
	Given 3 alert exists

Scenario Outline: Not logged in
	Given I am on the <page> alert page
	Then I should be on the home page

Examples:
	|	page	|
	|	first	|
	|	second	|
	|	third	|

Scenario Outline: Logged in
	Given I am logged in as <user>
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
