Feature: Users can request tickets

Scenario Outline: I fill in fields appropriately/inappropriately
	When I request a ticket:
	|	ticket_request_attributes_applicant_attributes_name	|	ahmad		|
	|	ticket_line											|	<line>		|
	|	ticket_number										|	<number>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	line	|	number	|	page		|	should_see							|
	|	line	|			|	requests	|	Your Request was sent successfully	|
	|			|	number	|	tickets		|	Please fill in all fields			|