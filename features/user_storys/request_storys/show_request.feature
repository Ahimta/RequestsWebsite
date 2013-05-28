Feature: Users can see individual requests

@request_show
Scenario Outline: comings
	Given the following comings exist:
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

@request_show
Scenario Outline: tickets
	Given the following tickets exist:
	|	line	|	request_id	|
	|	line1	|	1			|
	|	line2	|	2			|
	|	line3	|	3			|
	Given I am on the <cardinality> request page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	| cardinality	|	should_see			|	should_not_see							|
	|	first		|	applicant1, line1	|	applicant2, applicant3, line2, line3	|
	|	second		|	applicant2, line2	|	applicant1, applicant3, line1, line3	|
	|	third		|	applicant3, line3	|	applicant1, applicant1, line1, line2	|

@request_show
Scenario Outline:
	Given the following vacations exist:
	|	request_id	|	duration	|	from	|	to	|
	|	1			|	11			|	12		|	13	|
	|	2			|	21			|	22		|	23	|
	|	3			|	31			|	32		|	33	|
	And I am on the <cardinality> request page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	| cardinality	|	should_see				|	should_not_see									|
	|	first		|	applicant1, 11, 12, 13	|	applicant2, applicant3, 21, 22, 23, 31, 32, 33	|
	|	second		|	applicant2, 21, 22, 23	|	applicant1, applicant3,	11, 12, 13, 31, 32, 33	|
	|	third		|	applicant3, 31, 32, 33	|	applicant1, applicant2,	11, 12, 13, 21, 22, 23	|