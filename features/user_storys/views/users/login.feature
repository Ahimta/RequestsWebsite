Feature: users can log in

@login_logout
Scenario Outline: valid user | invalid user
	When I login:
	|	login_username	|	<username>	|
	|	login_password	|	<password>	|
	Then I should be on the <page> page
	And I should see the following: <should_see>
	But I should not see the following: <should_not_see>

Examples:
	|	username	|	password	|	page		|	should_see							|	should_not_see						|
	|	username1	|	password1	|	requests	|	Logged in, Logout					|	Invalid username and/or password	|
	|	USERNAME1	|	password1	|	requests	|	Logged in, Logout					|	Invalid username and/or password	|
	|	username1	|	PASSWORD1	|	home		|	Invalid username and/or password	|	Logged in, Logout					|
	|	username1	|	password2	|	home		|	Invalid username and/or password	|	Logged in, Logout					|
	|	username2	|	password1	|	home		|	Invalid username and/or password	|	Logged in, Logout					|
	|	username1	|				|	home		|	Invalid username and/or password	|	Logged in, Logout					|
	|				|	password1	|	home		|	Invalid username and/or password	|	Logged in, Logout					|
	|				|				|	home		|	Invalid username and/or password	|	Logged in, Logout					|