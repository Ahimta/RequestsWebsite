Feature: Users can see individual requests

Scenario Outline: comings
	Given a coming group exist
	And I am on the <order> request page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	|	order	|	should_see						|	should_not_see													|
	|	first	|	applicant1, reason1, Pending	|	applicant2, applicant3, reason2, reason3, Accepted, Rejected	|
	|	second	|	applicant2, reason2, Accepted	|	applicant1, applicant3, reason1, reason3, Pending, Rejected		|
	|	third	|	applicant3, reason3, Rejected	|	applicant2, applicant1, reason2, reason1, Accepted, Pending		|