Feature: Users can find all users on users page

Scenario: users exist
	And the following users exist:
	|	username	|	password	|	location	|
	|	username1	|	password1	|	location1	|
	|	username2	|	password2	|	location2	|
	And I am on the users page
	Then I should see the following: username1, username2, location1, location2

Scenario: users don't exist
	Given I am on the users page
	Then I should see "There's no users in the mean time"