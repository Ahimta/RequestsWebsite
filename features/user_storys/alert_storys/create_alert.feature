Feature: Users can request alerts

Scenario: I fill in fields appropriately
	When I send an alert:
	|	alert_title	|	ahmad	|
	|	alert_body	|	flue	|
	Then I should be on the alerts page
	And I should see "Your Request was sent successfully"

Scenario: I don't fill in fields appropriately
	When I send an alert:
	|	alert_title	|	ahmad	|
	Then I should be on the alerts page
	And I should see "Please fill in all fields"
	And the "alert_title" field should contain "ahmad"