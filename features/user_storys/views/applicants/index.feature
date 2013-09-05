Feature: applicants index

@admin
Scenario Outline:
	Given a pending <model> exists
		And an accepted <model> exists
		And a rejected <model> exists
		And I am on the applicants page
	Then I should see the following: applicant0, applicant1, applicant2

Examples:
	|	model		|
	|	coming		|
	|	leave		|
	|	ticket		|
	|	vacation	|