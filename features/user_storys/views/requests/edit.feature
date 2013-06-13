Feature: users can edit requests

Scenario Outline: comings
	Given a coming exists
	When I edit the first coming:
		|	coming_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	coming_reason										|	<reason>	|
	Then I should see "<should_see>"

Examples:
	|	applicant	|	reason	|	should_see							|
	|	applicant	|	reason	|	Your Request was sent successfully	|
	|	applicant	|			|	Please fill in all fields			|
	|				|	reason	|	Please fill in all fields			|

Scenario Outline: ticket
	Given a ticket exists
	When I edit the first ticket:
		|	ticket_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	ticket_line											|	<line>		|
		|	ticket_number										|	<number>	|
	Then I should see "<should_see>"

Examples:
	|	applicant	|	line	|	number		|	should_see							|
	|	applicant	|	line	|	number		|	Your Request was sent successfully	|
	|	applicant	|	line	|				|	Your Request was sent successfully	|
	|	applicant	|			|				|	Please fill in all fields			|
	|				|	line	|	number		|	Please fill in all fields			|
	|	applicant	|			|	number		|	Please fill in all fields			|
	|				|	line	|	number		|	Please fill in all fields			|


Scenario Outline: vacation
	Given a vacation exists
	When I edit the first vacation:
		|	vacation_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	vacation_duration										|	<duration>	|
		|	vacation_from											|	<from>		|
		|	vacation_duration										|	<to>		|
	Then I should see "<should_see>"

Examples:
	|	applicant	|	duration	|	from	|	to	|	should_see							|
	|	applicant	|	1			|	2		|	3	|	Your Request was sent successfully	|
	|	applicant	|	1			|	2		|		|	Please fill in all fields			|
	|	applicant	|	1			|			|		|	Please fill in all fields			|
	|	applicant	|				|	2		|		|	Please fill in all fields			|
	|				|	1			|	2		|		|	Please fill in all fields			|
	|	applicant	|				|			|	3	|	Please fill in all fields			|
