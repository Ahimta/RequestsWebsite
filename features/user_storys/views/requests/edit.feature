Feature: users can edit requests

Scenario Outline: comings
	Given a coming exists
	When I edit the first coming:
		|	coming_request_attributes_applicant_attributes_name	|	<applicant>	|
		|	coming_reason										|	<reason>	|
	Then I should see "<should_see>"

Examples:
	|	applicant	|	reason	|	type		|	should_see							|
	|	applicant	|	reason	|	pending		|	Your Request was sent successfully	|
	|	applicant	|			|	accepted	|	Please fill in all fields			|
	|				|	reason	|	rejected	|	Please fill in all fields			|
