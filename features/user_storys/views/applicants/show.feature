Feature: applicants show

@admin
Scenario Outline: applicants
	Given a <type> <model> exist
		And I am on the first applicant page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	model		|	type		|	should_see									|	should_not_see																			|
	|	coming		|	pending		|	applicant0, username0, location0, Pending	|	applicant1, username1, location1, applicant2, username2, location2, Accepted, Rejected	|
	|	coming		|	accepted	|	applicant1, username1, location1, Accepted	|	applicant0, username0, location0, applicant2, username2, location2, Pending, Rejected	|
	|	coming		|	rejected	|	applicant2, username2, location2, Rejected	|	applicant0, username0, location0, applicant0, username0, location0, Pending, Accepted	|
	|	ticket		|	pending		|	applicant0, username0, location0, Pending	|	applicant1, username1, location1, applicant2, username2, location2, Accepted, Rejected	|
	|	ticket		|	accepted	|	applicant1, username1, location1, Accepted	|	applicant0, username0, location0, applicant2, username2, location2, Pending, Rejected	|
	|	ticket		|	rejected	|	applicant2, username2, location2, Rejected	|	applicant0, username0, location0, applicant1, username1, location1, Pending, Accepted	|
	|	vacation	|	pending		|	applicant0, username0, location0, Pending	|	applicant1, username1, location1, applicant2, username2, location2, Accepted, Rejected	|
	|	vacation	|	accepted	|	applicant1, username1, location1, Accepted	|	applicant0, username0, location0, applicant2, username2, location2, Pending, Rejected	|
	|	vacation	|	rejected	|	applicant2, username2, location2, Rejected	|	applicant0, username0, location0, applicant1, username1, location1, Pending, Accepted	|
