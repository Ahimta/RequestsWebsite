Feature: Users can see individual tickets

Scenario Outline:
	Given the following tickets exist:
	|	applicant	|	line	|	user_id	|	accepted	|
	|	applicant1	|	line1	|	0		|	nil			|
	|	applicant2	|	line2	|	0		|	true		|
	|	applicant3	|	line3	|	0		|	false		|
	Given I am on the <cardinality> ticket page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	| cardinality	|	should_see			|	should_not_see								|
	|	first		|	applicant1, line1	|	applicant2, applicant3, line2, line3	|
	|	second		|	applicant2, line2	|	applicant1, applicant3, line1, line3	|
	|	third		|	applicant3, line3	|	applicant1, applicant1, line1, line2	|