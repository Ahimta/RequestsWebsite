Feature: Users can request alerts

Scenario Outline: I fill in fields appropriately
	When I send an alert:
	|	alert_title	|	ahmad	|
	|	alert_body	|	<body>	|
	Then I should be on the alerts page
	And I should see "<should_see>"

Examples:
	|	body	|	should_see							|
	|	flue	|	Your Request was sent successfully	|
	|			|	Please fill in all fields			|