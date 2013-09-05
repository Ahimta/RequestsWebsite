Feature: Users can find all requests on requests page

Scenario: requests exist

@admin
Scenario: requests don't exist
	Given I am on the requests page
	Then I should see "You haven't requested anything yet"