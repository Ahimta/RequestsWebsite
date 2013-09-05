Feature: Users can find all alerts on alerts page

@admin
Scenario: alerts exist
	Given 3 alerts exist
	And I am on the alerts page
	Then I should see the following: title1, title2, title0, body1, body2, body0

@admin
Scenario: alerts don't exist
	Given I am on the alerts page
	Then I should see "There's no alerts in the mean time"
