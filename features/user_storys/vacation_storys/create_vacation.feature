Feature: Users can request vacations

Scenario Outline: I (don't)? fill in fields appropriately
	When I request a vacation:
	|	vacation_request_attributes_applicant_attributes_name	|	ahmad	|
	|	vacation_duration										|	1		|
	|	vacation_from											|	2		|
	|	vacation_to												|	<to>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	to	|	page		|	should_see							|
	|	3	|	requests	|	Your Request was sent successfully	|
	|		|	vacations	|	Please fill in all fields			|