Feature: Users can see individual leaves

Scenario Outline:
	Given the followingg leaves exist:
	|	applicant	|	reason	|	user_id	|	accepted	|
	|	applicant1	|	reason1	|	0		|	nil			|
	|	applicant2	|	reason2	|	0		|	true		|
	|	applicant3	|	reason3	|	0		|	false		|
	Given I am on the <cardinality> leave page
	Then I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	| cardinality	|	should_see			|	should_not_see								|
	|	first		|	applicant1, reason1	|	applicant2, applicant3, reason2, reason3	|
	|	second		|	applicant2, reason2	|	applicant1, applicant3, reason1, reason3	|
	|	third		|	applicant3, reason3	|	applicant1, applicant1, reason1, reason2	|