Feature: Users can request leaves

Scenario Outline: I (don't)? fill in fields appropriately
	When I request a leave:
	|	leave_request_attributes_applicant_attributes_name	|	<applicant>	|
	|	leave_reason										|	<reason>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	applicant	|	reason	|	page		|	should_see							|
	|	applicant	|	reason	|	requests	|	Your Request was sent successfully	|
	|	applicant	|			|	leaves		|	Please fill in all fields			|
	|				|	reason	|	leaves		|	Please fill in all fields			|
	|				|			|	leaves		|	Please fill in all fields			|