Feature: AlertsController#index

Scenario Outline: Not logged in
	Given <n> alerts exist
	And I am on the alerts page
	Then I should be on the home page

Examples:
	|	n	|
	|	0	|
	|	9	|

Scenario Outline: Logged in
	Given I am logged in as <user>
		And <n> alerts exist
		And I am on the alerts page
	Then I should see the following: <should_see>

Examples:
	|	user			|	n	|	should_see									|
	|	admin			|	0	|	There's no alerts in the mean time			|
	|	regular user	|	0	|	There's no alerts in the mean time			|
	|	admin			|	3	|	title1, title2, title3, body1, body2, body3	|
	|	regular user	|	3	|	title1, title2, title3, body1, body2, body3	|
