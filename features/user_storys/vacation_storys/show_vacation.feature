Feature: Users can see individual vacations

@request_show
Scenario Outline:
	Given the following vacations exist:
	|	request_id	|	duration	|	from	|	to	|
	|	1			|	11			|	12		|	13	|
	|	2			|	21			|	22		|	23	|
	|	3			|	31			|	32		|	33	|
	And I am on the <cardinality> vacation page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	| cardinality	|	should_see				|	should_not_see									|
	|	first		|	applicant1, 11, 12, 13	|	applicant2, applicant3, 21, 22, 23, 31, 32, 33	|
	|	second		|	applicant2, 21, 22, 23	|	applicant1, applicant3,	11, 12, 13, 31, 32, 33	|
	|	third		|	applicant3, 31, 32, 33	|	applicant1, applicant2,	11, 12, 13, 21, 22, 23	|