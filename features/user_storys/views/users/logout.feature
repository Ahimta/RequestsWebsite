Feature: users can logout

@login_logout
Scenario: logged in
	When I login:
	|	login_username	|	username1	|
	|	login_password	|	password1	|
	When I logout
	Then I should see "Logged out"
	But I should not see "Logout"