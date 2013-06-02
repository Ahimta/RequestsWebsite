Feature: Users can find all users on users page

Scenario: users exist
	Given 3 users exist
	And I am on the users page
	Then I should see the following: username10, username11, username12, location10, location11, location12

Scenario: users don't exist
	Given I am on the users page
	Then I should see "There's no users in the mean time"