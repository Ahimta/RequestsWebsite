Feature: Users can request vacations

Scenario: I fill in fields appropriately
	When I request a vacation:
	|	vacation_applicant				|	ahmad	|
	|	vacation_duration				|	1		|
	|	vacation_from_day				|	2		|
	|	vacation_from_month				|	3		|
	|	vacation_from_year				|	4		|
	|	vacation_to_day					|	5		|
	|	vacation_to_month				|	6		|
	|	vacation_to_year				|	7		|
	Then I should be on the vacations page
	And I should see "Your Request was sent successfully"

Scenario: I don't fill in fields appropriately
	When I request a vacation:
	|	vacation_applicant				|	ahmad	|
	|	vacation_duration				|	1		|
	|	vacation_from_day				|	2		|
	|	vacation_from_month				|	3		|
	|	vacation_from_year				|	4		|
	|	vacation_to_day					|	5		|
	|	vacation_to_month				|	6		|
	Then I should be on the vacations page
	And I should see "Please fill in all fields"
	And the "vacation_applicant" field should contain "ahmad"