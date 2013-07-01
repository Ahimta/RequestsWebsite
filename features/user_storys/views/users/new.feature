Feature: Users can request users

Scenario Outline: I fill in fields appropriately | I don't fill in fields appropriately
	When I register a user:
	|	user_username					|	<username>	|
	|	user_password					|	<password>	|
	|	user_location_attributes_name	|	<location>	|
	Then I should be on the users page
	And I should see "<should_see>"

Examples:
	|	username	|	password	|	location	|	should_see								|
	|	username	|	password	|	location	|	The user was registered successfully	|
	|	username	|	password	|				|	Please fill in all fields				|
	|	username	|				|	location	|	Please fill in all fields				|
	|				|	password	|	location	|	Please fill in all fields				|
	|				|	password	|				|	Please fill in all fields				|
	|				|				|	location	|	Please fill in all fields				|
	|				|				|				|	Please fill in all fields				|