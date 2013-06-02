Feature: Users can see individual requests

Scenario Outline: comings
	Given a <type> coming exist
	And I am on the first request page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	|	type		|	should_see						|	should_not_see													|
	|	pending		|	applicant1, reason1, Pending	|	applicant2, applicant3, reason2, reason3, Accepted, Rejected	|
	|	accepted	|	applicant2, reason2, Accepted	|	applicant1, applicant3, reason1, reason3, Pending, Rejected		|
	|	rejected	|	applicant3, reason3, Rejected	|	applicant1, applicant1, reason1, reason2, Pending, Accepted		|

@request_show
Scenario Outline: leaves
	Given the followingg leaves exist:
	|	reason	|	request_id	|
	|	reason1	|	1			|
	|	reason2	|	2			|
	|	reason3	|	3			|
	And I am on the <cardinality> request page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	| cardinality	|	should_see			|	should_not_see								|
	|	first		|	applicant1, reason1	|	applicant2, applicant3, reason2, reason3	|
	|	second		|	applicant2, reason2	|	applicant1, applicant3, reason1, reason3	|
	|	third		|	applicant3, reason3	|	applicant1, applicant1, reason1, reason2	|

Scenario Outline: tickets
	Given a <type> ticket exist
		And I am on the first request page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	type		|	should_see					|	should_not_see												|
	|	pending		|	applicant4, line1, Pending	|	applicant5, applicant6, line2, line3, Accepted, Rejected	|
	|	accepted	|	applicant5, line2, Accepted	|	applicant4, applicant6, line1, line3, Pending, Rejected		|
	|	rejected	|	applicant6, line3, Rejected	|	applicant4, applicant5, line1, line2, Pending, Accepted		|

Scenario Outline:
	Given a <type> vacation exist
	And I am on the first request page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	|	type		|	should_see							|	should_not_see									|
	|	pending		|	applicant7, 11, 12, 13, Pending		|	applicant8, applicant9, 21, 22, 23, 31, 32, 33	|
	|	accepted	|	applicant8, 21, 22, 23, Accepted	|	applicant7, applicant9,	11, 12, 13, 31, 32, 33	|
	|	rejected	|	applicant9, 31, 32, 33, Rejected	|	applicant7, applicant8,	11, 12, 13, 21, 22, 23	|
