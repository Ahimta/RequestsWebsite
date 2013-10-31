Feature: admins can create alerts

Scenario Outline: Not logged in
	Given I am logged in as <user>
	When I visit the new alert page
	Then I should be on the <page> page

Examples:
	|	user			|	page		|
	|	not				|	home		|
	|	regular user	|	requests	|

@admin
Scenario Outline: alert_create
	When I send an alert:
		|	alert_title	|	<title>	|
		|	alert_body	|	<body>	|
	Then I should be on the alerts page
		And I should see "<should_see>"

Examples:
	|	title	|	body	|	should_see						|
	|	title	|	body	|	The alert was sent successfully	|
	|	title	|			|	Please fill in all fields		|
	|			|	body	|	Please fill in all fields		|
	|			|			|	Please fill in all fields		|
