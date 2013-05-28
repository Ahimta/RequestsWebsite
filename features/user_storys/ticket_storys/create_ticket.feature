Feature: Users can request tickets

Scenario Outline: I fill in fields appropriately/inappropriately
	When I request a ticket:
	|	ticket_request_attributes_applicant_attributes_name	|	<applicant>	|
	|	ticket_line											|	<line>		|
	|	ticket_number										|	<number>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	applicant	|	line	|	number	|	page		|	should_see							|
	|	applicant	|	line	|	number	|	requests	|	Your Request was sent successfully	|
	|	applicant	|	line	|			|	requests	|	Your Request was sent successfully	|
	|	applicant	|			|	number	|	tickets		|	Please fill in all fields			|
	|				|	line	|	number	|	tickets		|	Please fill in all fields			|
	|	applicant	|			|			|	tickets		|	Please fill in all fields			|
	|				|	line	|			|	tickets		|	Please fill in all fields			|
	|				|			|	number	|	tickets		|	Please fill in all fields			|
	|				|			|			|	tickets		|	Please fill in all fields			|