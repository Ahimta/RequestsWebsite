Feature: Applicants#index

Background:
	Given 3 pending coming exists
		And 3 accepted ticket exists
		And 3 rejected vacation exists

Scenario: Not logged in
	Given I am on the applicants page
	Then I should be on the home page

Scenario Outline: Logged in as regular user
	When I login:
		|	login_username	|	<username>	|
		|	login_password	|	<password>	|
	Given I am on the applicants page
	Then I should see "<should_see>"
		But I should not see the following: <should_not_see>

Examples:
	|	username	|	password	|	should_see	|	should_not_see			|
	|	username1	|	password1	|	applicant1	|	applicant2, applicant3	|
	|	username2	|	password2	|	applicant2	|	applicant1, applicant3	|
	|	username3	|	password3	|	applicant3	|	applicant1, applicant2	|

@admin
Scenario: Logged in as admin
	Given I am on the applicants page
	Then I should see the following: applicant1, applicant2, applicant3
