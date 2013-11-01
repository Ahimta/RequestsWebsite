Feature: ApplicantsController#show

Background:
	Given 3 pending comings exist
		And 3 accepted tickets exist
		And 3 rejected vacations exist

Scenario Outline: Not logged in
	Given I am on the <applicant> applicant page
	Then I should be on the home page

Examples:
	|	applicant	|
	|	first		|
	|	second		|
	|	third		|

Scenario Outline: Logged in as regular user and visiting my applicants' pages
	When I login:
		|	login_username	|	<username>	|
		|	login_password	|	<password>	|
	Given I am on the <applicant> applicant page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	username	|	password	|	applicant	|	should_see							|	should_not_see														|
	|	username1	|	password1	|	first		|	applicant1, username1, location1	|	applicant2, username2, location2, applicant3, username3, location3	|
	|	username2	|	password2	|	second		|	applicant2, username2, location2	|	applicant1, username1, location1, applicant3, username3, location3	|
	|	username3	|	password3	|	third		|	applicant3, username3, location3	|	applicant1, username1, location1, applicant2, username2, location2	|

Scenario Outline: Logged in as regular user and visiting others applicants' pages
	When I login:
		|	login_username	|	<username>	|
		|	login_password	|	<password>	|
	Given I am on the <applicant> applicant page
	Then I should be on the requests page

Examples:
	|	username	|	password	|	applicant	|
	|	username1	|	password1	|	second		|
	|	username1	|	password1	|	third		|
	|	username2	|	password2	|	first		|
	|	username2	|	password2	|	third		|
	|	username3	|	password3	|	first		|
	|	username3	|	password3	|	second		|

@admin
Scenario Outline: Logged in as admin
	Given I am on the <applicant> applicant page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	applicant	|	should_see							|	should_not_see														|
	|	first		|	applicant1, username1, location1	|	applicant2, username2, location2, applicant3, username3, location3	|
	|	second		|	applicant2, username2, location2	|	applicant1, username1, location1, applicant3, username3, location3	|
	|	third		|	applicant3, username3, location3	|	applicant1, username1, location1, applicant2, username2, location2	|
