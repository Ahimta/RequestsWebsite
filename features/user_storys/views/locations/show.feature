Feature: LocationsController#show

Background:
	Given 3 pending comings exist
		And 3 accepted leaves exist
		And 3 rejected tickets exist
		And 3 accepted vacations exist

Scenario Outline: Not logged in as admin
	Given I am logged in as <user>
		And I am on the <location> location page
	Then I should be on the <page> page

Examples:
	|	user			|	page		|	location	|
	|	not				|	home		|	first		|
	|	not				|	home		|	second		|
	|	not				|	home		|	third		|
	|	regular user	|	requests	|	first		|
	|	regular user	|	requests	|	second		|
	|	regular user	|	requests	|	third		|

@admin
Scenario Outline: Logged in as admin
	Given I am on the <location> location page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	location	|	should_see				|	should_not_see								|
	|	first		|	admin, location			|	location1, username1, location2, username2	|
	|	second		|	location1, username1	|	admin, location2, username2					|
	|	third		|	location2, username2	|	admin, location1, username1					|
