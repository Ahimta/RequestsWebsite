Feature: Users can find all users on users page

@admin
Scenario: users exist
	Given 3 users exist
	And I am on the users page
	Then I should see the following: username0, username1, username2, location0, location1, location2

Scenario: users don't exist
	Given I am on the users page
	Then I should see "There's no users in the mean time"