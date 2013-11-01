Feature: RequestsController#show

Scenario Outline: Not logged in
	Given 1 rejected comings exist
		And 1 accepted leaves exist
		And 1 pending tickets exist
		And 1 pending vacations exist
	Given I am on the <request> request page
	Then I should be on the home page

Examples:
	|	request		|
	|	first		|
	|	second		|
	|	third		|
	|	fourth		|

Scenario Outline: Logged in as regular user and visit my requests
	Given 1 rejected comings exist
		And 1 accepted leaves exist
		And 1 pending tickets exist
		And 1 pending vacations exist
	When I login:
		|	login_username	|	username1	|
		|	login_password	|	password1	|
	Given I am on the <request> request page
	Then I should see the following: <should_see>, applicant1

Examples:
	|	request		|	should_see				|
	|	first		|	Rejected, reason1		|
	|	second		|	Accepted, reason1		|
	|	third		|	Pending, line1, number1	|
	|	fourth		|	Pending, 11, 12, 13		|

Scenario Outline: Logged in as regular user and visit others' requests
	Given 4 rejected comings exist
		And 3 accepted leaves exist
		And 3 pending tickets exist
		And 3 pending vacations exist
	When I login:
		|	login_username	|	username1	|
		|	login_password	|	password1	|
	Given I am on the <request> request page
	Then I should be on the requests page

Examples:
	|	request		|
	|	second		|
	|	third		|
	|	fourth		|

@admin
Scenario Outline: Logged in as admin
	Given 3 <type> <model> exist
		And I am on the first request page
	Then I should see the following: <should_see>

Examples:
	|	model		|	type		|	should_see							|
	|	coming		|	pending		|	applicant1, reason1, Pending		|
	|	coming		|	accepted	|	applicant1, reason1, Accepted		|
	|	coming		|	rejected	|	applicant1, reason1, Rejected		|
	|	leave		|	pending		|	applicant1, reason1, Pending		|
	|	leave		|	accepted	|	applicant1, reason1, Accepted		|
	|	leave		|	rejected	|	applicant1, reason1, Rejected		|
	|	ticket		|	pending		|	applicant1, line1, Pending			|
	|	ticket		|	accepted	|	applicant1, line1, Accepted			|
	|	ticket		|	rejected	|	applicant1, line1, Rejected			|
	|	vacation	|	pending		|	applicant1, 11, 12, 13, Pending		|
	|	vacation	|	accepted	|	applicant1, 11, 12, 13, Accepted	|
	|	vacation	|	rejected	|	applicant1, 11, 12, 13, Rejected	|
