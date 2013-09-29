Feature: users can see individual requests

@admin
Scenario Outline: comings
	Given 1 <type> <model> exist
		And I am on the first request page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	model		|	type		|	should_see							|
	|	coming		|	pending		|	applicant1, reason1, Pending		|
	|	coming		|	accepted	|	applicant1, reason1, Accepted		|
	|	coming		|	rejected	|	applicant1, reason1, Rejected		|
	|	ticket		|	pending		|	applicant1, line1, Pending			|
	|	ticket		|	accepted	|	applicant1, line1, Accepted			|
	|	ticket		|	rejected	|	applicant1, line1, Rejected			|
	|	vacation	|	pending		|	applicant1, 11, 12, 13, Pending		|
	|	vacation	|	accepted	|	applicant1, 11, 12, 13, Accepted	|
	|	vacation	|	rejected	|	applicant1, 11, 12, 13, Rejected	|
