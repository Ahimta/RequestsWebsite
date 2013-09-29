Feature: admins can edit alerts

@admin
Scenario Outline: 
	Given 1 alert exists
	When I edit the first alert:
		|	alert_title	|	<title>	|
		|	alert_body	|	<body>	|
	#Then I should be on the alerts page
		Then I should see "<should_see>"

Examples:
	|	title	|	body	|	should_see							|
	|	title	|	body	|	The alert was updated successfully	|
	|	title	|			|	Please fill in all fields			|
	|			|	body	|	Please fill in all fields			|
	|			|			|	Please fill in all fields			|
