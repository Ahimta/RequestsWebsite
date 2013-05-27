Feature: users can log in

Scenario Outline: valid user | invalid user
	Given the following users exist:
	|	username	|	password	|	location	|
	|	username	|	password	|	location	|
	When I login:
	|	login_username	|	<username>	|
	|	login_password	|	<password>	|
	Then I should be on the requests page
	And I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	|	username	|	password	|	should_see							|	should_not_see						|
	|	username	|	password	|	Logged in, Logout					|	Invalid username and/or password	|
	|	username	|	passwor		|	Invalid username and/or password	|	Logged in, Logout					|
	|	usernam		|	password	|	Invalid username and/or password	|	Logged in, Logout					|