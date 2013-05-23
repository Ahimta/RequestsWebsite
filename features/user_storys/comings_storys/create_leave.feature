Feature: Users can request comings

Scenario: I fill in fields appropriately
	When I request a coming:
	|	coming_applicant	|	ahmad	|
	|	coming_reason		|	flue	|
	Then I should be on the comings page
	And I should see "Your Request was sent successfully"

Scenario: I don't fill in fields appropriately
	When I request a coming:
	|	coming_applicant	|	ahmad	|
	Then I should be on the comings page
	And I should see "Please fill in all fields"
	And the "coming_applicant" field should contain "ahmad"