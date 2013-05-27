Feature: users can log in

@login_logout
Scenario Outline: valid user | invalid user
	When I login:
	|	login_username	|	<username>	|
	|	login_password	|	<password>	|
	Then I should be on the requests page
	And I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	|	username	|	password	|	should_see							|	should_not_see						|
	|	username1	|	password1	|	Logged in, Logout					|	Invalid username and/or password	|
	|	username2	|	password1	|	Invalid username and/or password	|	Logged in, Logout					|
	|	usernam		|	password1	|	Invalid username and/or password	|	Logged in, Logout					|