Feature: Users can find all alerts on alerts page

Scenario: alerts exist
	Given the following alerts exist:
	|	title	|	body	|
	|	title1	|	body1	|
	|	title2	|	body2	|
	|	title3	|	body3	|
	And I am on the alerts page
	Then I should see the following: title1, title2, title3, body1, body2, body3

Scenario: alerts don't exist
	Given I am on the alerts page
	Then I should see "There's no alerts in the mean time"