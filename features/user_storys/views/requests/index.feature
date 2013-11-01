Feature: RequestsController#index

Background:
	Given 3 pending vacations exist
		And 3 accepted tickets exist
		And 3 pending leaves exist
		And 3 rejected comings exist
		And I am on the requests page

Scenario: Not logged in
	Then I should be on the home page

@admin
Scenario: Logged in as admin
	Then I should see the following: applicant1, applicant2, applicant3, username1, username2, username3

Scenario Outline: Logged in as regular user
	When I login:
		|	login_username	|	<username>	|
		|	login_password	|	<password>	|
	Given I am on the requests page
	Then I should see the following: <should_see>, Accepted, Pending, Rejected
		But I should not see the following: <should_not_see>, username1, username2, username3

Examples:
	|	username	|	password	|	should_see	|	should_not_see			|
	|	username1	|	password1	|	applicant1	|	applicant2, applicant3	|
	|	username2	|	password2	|	applicant2	|	applicant1, applicant3	|
	|	username3	|	password3	|	applicant3	|	applicant1, applicant2	|

@admin
Scenario: Requests don't exist
	When I destroy all requests
	Given I am on the requests page
	Then I should see "You haven't requested anything yet"
