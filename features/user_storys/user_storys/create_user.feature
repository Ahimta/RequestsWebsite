Feature: Users can request users

Scenario Outline: I fill in fields appropriately | I don't fill in fields appropriately
	When I register a user:
	|	user_username					|	<username>	|
	|	user_password					|	<password>	|
	|	user_location_attributes_name	|	<location>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	username	|	password	|	location	|	page		|	should_see							|
	|	username	|	password	|	location	|	requests	|	Your Request was sent successfully	|
	|	username	|	password	|				|	users		|	Please fill in all fields			|
	|	username	|				|	location	|	users		|	Please fill in all fields			|
	|				|	password	|	location	|	users		|	Please fill in all fields			|
	|				|	password	|				|	users		|	Please fill in all fields			|
	|				|				|	location	|	users		|	Please fill in all fields			|
	|				|				|				|	users		|	Please fill in all fields			|