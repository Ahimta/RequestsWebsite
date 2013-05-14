Feature: Users can request tickets

Scenario: I fill in fields appropriately
	When I request ticket:
	|	ticket_applicant	|	ahmad	|
	|	ticket_line			|	flue	|
	Then I should be on the tickets page
	And I should see "Your Request was sent successfully"

Scenario: I don't fill in fields appropriately
	When I request ticket:
	|	ticket_applicant	|	ahmad	|
	|	ticket_number		|	flue	|
	Then I should be on the tickets page
	And I should see "Please fill in all fields"
	And the "ticket_applicant" field should contain "ahmad"