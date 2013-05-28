Feature: Users can request vacations

Scenario Outline: I (don't)? fill in fields appropriately
	When I request a vacation:
	|	vacation_request_attributes_applicant_attributes_name	|	<applicant>	|
	|	vacation_duration										|	<duration>	|
	|	vacation_from											|	<from>		|
	|	vacation_to												|	<to>		|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	applicant	|	duration	|	from	|	to	|	page		|	should_see							|
	|	applicant	|	1			|	2		|	3	|	requests	|	Your Request was sent successfully	|
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