Feature: UsersController#index

Background:
	Given 3 users exist

Scenario Outline: Not logged in as admin
	Given I am logged in as <user>
		And I am on the users page
	Then I should be on the <page> page

Examples:
	|	user			|	page		|
	|	not				|	home		|
	|	regular user	|	requests	|


@admin
Scenario: Logged in as admin
	Given I am on the users page
	Then I should see the following: username1, username2, username3, location1, location2, location3