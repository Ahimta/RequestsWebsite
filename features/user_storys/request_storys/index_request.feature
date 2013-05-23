Feature: Users can find all requests on requests page

Scenario: requests exist
	Given the following comings exist:
	|	applicant	|	reason		|	user_id	|
	|	capplicant1	|	creason1	|	0		|
	|	capplicant2	|	creason2	|	0		|
	And the following tickets exist:
	|	applicant	|	line	|	user_id	|
	|	tapplicant1	|	line1	|	0		|
	|	tapplicant2	|	line2	|	0		|
	And the following vacations exist:
	|	applicant	|	duration	|	from	|	to	|	user_id	|
	|	vapplicant1	|	11			|	12		|	13	|	0		|
	|	vapplicant2	|	21			|	22		|	23	|	0		|
	And I am on the requests page
	Then I should see the following: capplicant1, capplicant2, tapplicant1, tapplicant2, vapplicant1, vapplicant2
	

Scenario: requests don't exist
	Given I am on the requests page
	Then I should see "You haven't requested anything yet"