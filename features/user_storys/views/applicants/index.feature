Feature: applicants index

@admin
Scenario Outline:
	Given 3 pending <model> exists
		And 3 accepted <model> exists
		And 3 rejected <model> exists
		And I am on the applicants page
	Then I should see the following: applicant1, applicant2, applicant3

Examples:
	|	model		|
	|	coming		|
	|	leave		|
	|	ticket		|
	|	vacation	|