Feature: Admin can find all users on users page

@admin
Scenario: users exist
	Given 3 users exist
	And I am on the users page
	Then I should see the following: username1, username2, username3, location1, location2, location3