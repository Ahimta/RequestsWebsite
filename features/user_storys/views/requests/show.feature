Feature: users can see individual requests

@admin
Scenario Outline: comings
	Given a <type> <model> exist
		And I am on the first request page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	model		|	type		|	should_see							|	should_not_see														|
	|	coming		|	pending		|	applicant0, reason0, Pending		|	applicant1, applicant2, reason1, reason2, Accepted, Rejected		|
	|	coming		|	accepted	|	applicant1, reason1, Accepted		|	applicant0, applicant2, reason0, reason2, Pending, Rejected			|
	|	coming		|	rejected	|	applicant2, reason2, Rejected		|	applicant0, applicant0, reason0, reason1, Pending, Accepted			|
	|	ticket		|	pending		|	applicant0, line0, Pending			|	applicant1, applicant2, line1, line2, Accepted, Rejected			|
	|	ticket		|	accepted	|	applicant1, line1, Accepted			|	applicant0, applicant2, line0, line2, Pending, Rejected				|
	|	ticket		|	rejected	|	applicant2, line2, Rejected			|	applicant0, applicant1, line0, line1, Pending, Accepted				|
	|	vacation	|	pending		|	applicant0, 1, 02, 03, Pending		|	applicant1, applicant2, 11, 12, 13, Accepted, 21, 22, 23, Rejected	|
	|	vacation	|	accepted	|	applicant1, 11, 12, 13, Accepted	|	applicant0, applicant2,	1, 02, 03, Pending, 21, 22, 23, Rejected	|
	|	vacation	|	rejected	|	applicant2, 21, 22, 23, Rejected	|	applicant0, applicant1,	1, 02, 03, Pending, 11, 12, 13, Accepted	|
