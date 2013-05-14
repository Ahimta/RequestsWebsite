Feature: Users can request leaves

Scenario: I fill in fields appropriately
	When I request a leave:
	|	leave_applicant	|	ahmad	|
	|	leave_reason	|	flue	|
	Then I should be on the leaves page
	And I should see "Your Request was sent successfully"

Scenario: I don't fill in fields appropriately
	When I request a leave:
	|	leave_applicant	|	ahmad	|
	Then I should be on the leaves page
	And I should see "Please fill in all fields"
	And the "leave_applicant" field should contain "ahmad"