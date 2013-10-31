Feature: UsersController#{new, create}

Scenario Outline: Not logged in as admin
	Given I am logged in as <user>
		And I am on the new user page
	Then I should be on the <page> page

Examples:
	|	user			|	page		|
	|	regular user	|	requests	|
	|	not				|	home		|

@admin
Scenario Outline: Logged in as admin
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
