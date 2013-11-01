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

@admin, @regular_user
Scenario Outline: Logged in
	Given I am on the <page> alert page
	Then I should see the following: <should_see>

Examples:
	|	page	|	should_see		|
	|	first	|	title1, body1	|
	|	second	|	title2, body2	|
	|	third	|	title3, body3	|
