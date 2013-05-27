Feature: Users can find all requests on requests page

@request_index, @request_show
Scenario: requests exist
	Given I am on the requests page
	Then I should see the following: applicant1, applicant2, applicant3, Accepted, Rejected

Scenario: requests don't exist
	Given I am on the requests page
	Then I should see "You haven't requested anything yet"