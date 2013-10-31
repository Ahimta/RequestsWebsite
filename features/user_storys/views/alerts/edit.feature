Feature: AlertsController#{edit, update}

Background:
	Given 1 alert exists

Scenario: Not logged in
	When I visit the first alert edit page
	Then I should be on the home page

@regular_user
Scenario: Logged in as a regular user
	When I visit the first alert edit page
	Then I should be on the requests page

@admin
Scenario Outline: Logged in as admin
	When I edit the first alert:
		|	alert_title	|	<title>	|
		|	alert_body	|	<body>	|
	Then I should be on the <page> page
		And I should see "<should_see>"

Examples:
	|	title	|	body	|	page		|	should_see							|
	|	title	|	body	|	alerts		|	The alert was updated successfully	|
	|	title	|			|	first alert	|	Please fill in all fields			|
	|			|	body	|	first alert	|	Please fill in all fields			|
	|			|			|	first alert	|	Please fill in all fields			|
