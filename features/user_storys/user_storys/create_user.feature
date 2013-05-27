Feature: Users can request users

Scenario Outline: I fill in fields appropriately | I don't fill in fields appropriately
	When I register a user:
	|	user_username			|	ahmad		|
	|	user_password			|	password	|
	|	user_location_attributes_name		|	<location>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	location	|	page		|	should_see							|
	|	location	|	requests	|	Your Request was sent successfully	|
	|				|	users		|	Please fill in all fields			|