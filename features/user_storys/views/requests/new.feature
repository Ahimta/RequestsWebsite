Feature: RequestsController{new, create}

Scenario Outline: Not logged in
	Given I am on the new <model> page
	Then I should be on the home page

Examples:
	|	model		|
	|	coming		|
	|	leave		|
	|	ticket		|
	|	vacation	|

@admin, @regular_user
Scenario Outline: request a coming
	When I request a coming:
		|	coming_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	coming_reason										|	<reason>	|
	Then I should be on the <page> page
		And I should see "<should_see>"

Examples:
	|	applicant	|	reason	|	page		|	should_see							|
	|	applicant	|	reason	|	requests	|	Your request was sent successfully	|
	|	applicant	|			|	comings		|	Please fill in all fields			|
	|				|	reason	|	comings		|	Please fill in all fields			|
	|				|			|	comings		|	Please fill in all fields			|

@admin, @regular_user
Scenario Outline: request a leave
	When I request a leave:
		|	leave_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	leave_reason										|	<reason>	|
	Then I should be on the <page> page
		And I should see "<should_see>"

Examples:
	|	applicant	|	reason	|	page		|	should_see							|
	|	applicant	|	reason	|	requests	|	Your request was sent successfully	|
	|	applicant	|			|	leaves		|	Please fill in all fields			|
	|				|	reason	|	leaves		|	Please fill in all fields			|
	|				|			|	leaves		|	Please fill in all fields			|

@admin, @regular_user
Scenario Outline: request a ticket
	When I request a ticket:
		|	ticket_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	ticket_line											|	<line>		|
		|	ticket_number										|	<number>	|
	Then I should be on the <page> page
		And I should see "<should_see>"

Examples:
	|	applicant	|	line	|	number	|	page		|	should_see							|
	|	applicant	|	line	|	number	|	requests	|	Your request was sent successfully	|
	|	applicant	|	line	|			|	requests	|	Your request was sent successfully	|
	|	applicant	|			|	number	|	tickets		|	Please fill in all fields			|
	|				|	line	|	number	|	tickets		|	Please fill in all fields			|
	|	applicant	|			|			|	tickets		|	Please fill in all fields			|
	|				|	line	|			|	tickets		|	Please fill in all fields			|
	|				|			|	number	|	tickets		|	Please fill in all fields			|
	|				|			|			|	tickets		|	Please fill in all fields			|

@admin, @regular_user
Scenario Outline: request a vacation
	When I request a vacation:
		|	vacation_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	vacation_duration										|	<duration>	|
		|	vacation_from											|	<from>		|
		|	vacation_to												|	<to>		|
	Then I should be on the <page> page
		And I should see "<should_see>"

Examples:
	|	applicant	|	duration	|	from	|	to	|	page		|	should_see							|
	|	applicant	|	1			|	2		|	3	|	requests	|	Your request was sent successfully	|
	|	applicant	|	1			|	2		|		|	vacations	|	Please fill in all fields			|
	|	applicant	|	1			|			|		|	vacations	|	Please fill in all fields			|
	|	applicant	|				|	2		|	3	|	vacations	|	Please fill in all fields			|
	|	applicant	|	1			|			|	3	|	vacations	|	Please fill in all fields			|
	|				|	1			|	2		|	3	|	vacations	|	Please fill in all fields			|
	|				|	1			|	2		|		|	vacations	|	Please fill in all fields			|
	|				|	1			|			|		|	vacations	|	Please fill in all fields			|
	|				|				|	2		|	3	|	vacations	|	Please fill in all fields			|
	|				|	1			|			|	3	|	vacations	|	Please fill in all fields			|
	|				|				|			|		|	vacations	|	Please fill in all fields			|

@admin, @regular_user
Scenario: More than one request with the same applicants create only one applicant
	When I request a coming:
		|	coming_request_attributes_applicant_attributes_name	|	applicant	|
		|	coming_reason										|	reason		|
	And I request a leave:
		|	leave_request_attributes_applicant_attributes_name	|	applicant	|
		|	leave_reason										|	reason		|
	Then there should be only one applicant

@admin, @regular_user
Scenario Outline:
	When I request a coming:
		|	coming_request_attributes_applicant_attributes_name	|	applicant	|
		|	coming_reason										|	reason		|
	And I request a coming:
		|	coming_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	coming_reason										|	<reason>	|
	And I press "Request Coming"
	And I fill in:
		|	coming_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	coming_reason										|	<reason>	|
	And I press "Request Coming"
	And I fill in:
		|	coming_request_attributes_applicant_attributes_name	|	applicant	|
		|	coming_reason										|	reason		|

Examples:
	|	applicant	|	reason	|
	|	applicant	|			|
	|				|	reason	|
