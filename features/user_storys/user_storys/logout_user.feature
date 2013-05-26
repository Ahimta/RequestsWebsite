Feature: users can logout

Scenario: logged in
	Given the following users exist:
	|	username	|	password	|	location	|
	|	username	|	password	|	location	|
	When I login:
	|	login_username	|	username	|
	|	login_password	|	password	|
	When I logout
	Then I should see "Logged out"
	But I should not see "Logout"