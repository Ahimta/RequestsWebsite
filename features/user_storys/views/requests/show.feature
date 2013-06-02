Feature: Users can see individual requests

Scenario Outline: comings
	Given a <type> <model> exist
		And I am on the first request page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	model		|	type		|	should_see							|	should_not_see													|
	|	coming		|	pending		|	applicant1, reason1, Pending		|	applicant2, applicant3, reason2, reason3, Accepted, Rejected	|
	|	coming		|	accepted	|	applicant2, reason2, Accepted		|	applicant1, applicant3, reason1, reason3, Pending, Rejected		|
	|	coming		|	rejected	|	applicant3, reason3, Rejected		|	applicant1, applicant1, reason1, reason2, Pending, Accepted		|
	|	ticket		|	pending		|	applicant4, line1, Pending			|	applicant5, applicant6, line2, line3, Accepted, Rejected		|
	|	ticket		|	accepted	|	applicant5, line2, Accepted			|	applicant4, applicant6, line1, line3, Pending, Rejected			|
	|	ticket		|	rejected	|	applicant6, line3, Rejected			|	applicant4, applicant5, line1, line2, Pending, Accepted			|
	|	vacation	|	pending		|	applicant7, 11, 12, 13, Pending		|	applicant8, applicant9, 21, 22, 23, 31, 32, 33					|
	|	vacation	|	accepted	|	applicant8, 21, 22, 23, Accepted	|	applicant7, applicant9,	11, 12, 13, 31, 32, 33					|
	|	vacation	|	rejected	|	applicant9, 31, 32, 33, Rejected	|	applicant7, applicant8,	11, 12, 13, 21, 22, 23					|
