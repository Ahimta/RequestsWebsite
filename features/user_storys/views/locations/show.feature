Feature: LocationsController#show

Scenario Outline: Not logged in as admin
	Given I am logged in as <user>
		And 3 pending <model> exist
		And 3 accepted <model> exist
		And 3 rejected <model> exist
		And I am on the second location page
	Then I should be on the <page> page

Examples:
	|	user			|	model	|	page		|
	|	not				|	coming	|	home		|
	|	regular user	|	ticket	|	requests	|

@admin
Scenario Outline: Logged in as admin
	Given 1 <type> coming exist
		And 1 <type> ticket exist
		And 1 <type> vacation exist
		And I am on the first location page
	Then I should see the following: admin, location
		But I should not see the following: location1, location2, location3, username1, username2, username3

Examples:
	|	type		|
	|	pending		|
	|	accepted	|
	|	rejected	|
