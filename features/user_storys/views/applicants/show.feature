Feature: applicants show

@admin
Scenario Outline: applicants
	Given 1 <type> <model> exist
		And I am on the first applicant page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	model		|	type		|	should_see									|
	|	coming		|	pending		|	applicant1, username1, location1, Pending	|
	|	coming		|	accepted	|	applicant1, username1, location1, Accepted	|
	|	coming		|	rejected	|	applicant1, username1, location1, Rejected	|
	|	ticket		|	pending		|	applicant1, username1, location1, Pending	|
	|	ticket		|	accepted	|	applicant1, username1, location1, Accepted	|
	|	ticket		|	rejected	|	applicant1, username1, location1, Rejected	|
	|	vacation	|	pending		|	applicant1, username1, location1, Pending	|
	|	vacation	|	accepted	|	applicant1, username1, location1, Accepted	|
	|	vacation	|	rejected	|	applicant1, username1, location1, Rejected	|
