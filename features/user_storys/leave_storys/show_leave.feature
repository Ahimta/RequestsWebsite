Feature: Users can see individual leaves

@request_show
Scenario Outline:
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