Feature: LocationsController#index

Background:
	Given 3 pending coming exists
		And 3 accepted ticket exists
		And 3 rejected vacation exists

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
