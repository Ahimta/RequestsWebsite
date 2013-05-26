Feature: Users can request users

Scenario: I fill in fields appropriately
	When I register a user:
	|	user_username			|	ahmad		|
	|	user_password			|	password	|
	|	user_location			|	location	|
	Then I should be on the requests page
	And I should see "Your Request was sent successfully"

Scenario: I don't fill in fields appropriately
	When I register a user:
	|	user_username			|	ahmad		|
	|	user_password			|	pasword		|
	Then I should be on the users page
	And I should see "Please fill in all fields"
	And the "user_username" field should contain "ahmad"