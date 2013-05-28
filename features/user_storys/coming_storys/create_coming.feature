Feature: Users can request comings

Scenario Outline:
	When I request a coming:
	|	coming_request_attributes_applicant_attributes_name	|	<applicant>	|
	|	coming_reason										|	<reason>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	applicant	|	reason	|	page		|	should_see							|
	|	applicant	|	reason	|	requests	|	Your Request was sent successfully	|
	|	applicant	|			|	comings		|	Please fill in all fields			|
	|				|	reason	|	comings		|	Please fill in all fields			|
	|				|			|	comings		|	Please fill in all fields			|