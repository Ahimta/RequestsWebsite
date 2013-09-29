Feature: users can edit requests

@admin
Scenario Outline: comings
	Given 1 <type> coming exist
	When I edit the first coming:
		|	coming_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	coming_reason										|	<reason>	|
	Then I should see "<should_see>"

Examples:
	|	applicant	|	reason	|	type		|	should_see								|
	|	applicant	|	reason	|	pending		|	Your request was updated successfully	|
	|	applicant	|			|	accepted	|	Please fill in all fields				|
	|				|	reason	|	rejected	|	Please fill in all fields				|

@admin
Scenario Outline: ticket
	Given 1 <type> ticket exists
	When I edit the first ticket:
		|	ticket_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	ticket_line											|	<line>		|
		|	ticket_number										|	<number>	|
	Then I should see "<should_see>"

Examples:
	|	applicant	|	line	|	number		|	type		|	should_see								|
	|	applicant	|	line	|	number		|	pending		|	Your request was updated successfully	|
	|	applicant	|	line	|				|	accepted	|	Your request was updated successfully	|
	|	applicant	|	line	|				|	rejected	|	Your request was updated successfully	|
	|	applicant	|			|				|	rejected	|	Please fill in all fields				|
	|				|	line	|	number		|	pending		|	Please fill in all fields				|
	|	applicant	|			|	number		|	accepted	|	Please fill in all fields				|
	|				|	line	|	number		|	rejected	|	Please fill in all fields				|


@admin
Scenario Outline: vacation
	Given 1 <type> vacation exists
	When I edit the first vacation:
		|	vacation_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	vacation_duration										|	<duration>	|
		|	vacation_from											|	<from>		|
		|	vacation_duration										|	<to>		|
	Then I should see "<should_see>"

@admin
Examples:
	|	applicant	|	duration	|	from	|	to	|	type		|	should_see								|
	|	applicant	|	1			|	2		|	3	|	accepted	|	Your request was updated successfully	|
	|	applicant	|	1			|	2		|	3	|	rejected	|	Your request was updated successfully	|
	|	applicant	|	1			|	2		|	3	|	pending		|	Your request was updated successfully	|
	|	applicant	|	1			|	2		|		|	accepted	|	Please fill in all fields				|
	|	applicant	|	1			|			|		|	rejected	|	Please fill in all fields				|
	|	applicant	|				|	2		|		|	pending		|	Please fill in all fields				|
	|				|	1			|	2		|		|	accepted	|	Please fill in all fields				|
	|	applicant	|				|			|	3	|	rejected	|	Please fill in all fields				|
