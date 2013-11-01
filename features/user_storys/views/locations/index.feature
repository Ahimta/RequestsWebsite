Feature: LocationsController#index

Background:
	Given 3 pending comings exists
		And 3 accepted leaves exists
		And 3 accepted tickets exists
		And 3 rejected vacations exists

Scenario Outline: Not logged in as admin
	Given I am logged in as <user>
		And I am on the locations page
	Then I should be on the <page> page

Examples:
	|	user			|	page		|
	|	not				|	home		|
	|	regular user	|	requests	|

@admin
Scenario: Logged in as admin
	Given I am on the locations page
	Then I should see the following: location1, location2, location3
