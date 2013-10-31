Feature: UsersController#logout

Scenario Outline: logged in
	Given 2 users exist
	When I login:
		|	login_username	|	<username>	|
		|	login_password	|	<password>	|
		And I logout
	Then I should see "Logged out"
		But I should not see "Logout"

Examples:
	|	username	|	password	|
	|	username1	|	password1	|
	|	username2	|	password2	|