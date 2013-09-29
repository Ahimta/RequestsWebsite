Feature: users can see alerts

@admin
Scenario:
	Given 3 alert exists
		And I am on the first alert page
	Then I should see the following: title1, body1
