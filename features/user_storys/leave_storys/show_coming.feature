Feature: Users can see individual comings

Background:
	Given the following comings exist:
	|	applicant	|	reason	|	user_id	|	accepted	|
	|	applicant1	|	reason1	|	0		|	nil			|
	|	applicant2	|	reason2	|	0		|	true		|
	|	applicant3	|	reason3	|	0		|	false		|

Scenario: coming not accepted yet
	Given I am on the first coming page
	Then I should see the following: applicant1, reason1
	But I should not see the following: applicant2, applicant3, reason2, reason3

Scenario: coming accepted
	Given I am on the second coming page
	Then I should see the following: applicant2, reason2
	But I should not see the following: applicant1, applicant3, reason1, reason3

Scenario: coming not accepted
	Given I am on the third coming page
	Then I should see the following: applicant3, reason3
	But I should not see the following: applicant1, applicant2, reason1, reason2