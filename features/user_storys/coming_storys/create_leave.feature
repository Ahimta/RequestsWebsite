Feature: Users can request comings

Scenario Outline:
	When I request a coming:
	|	coming_request_attributes_applicant_attributes_name	|	ahmad		|
	|	coming_reason										|	<reason>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	| reason	|	page		|	should_see							|	value	|
	|	flue	|	requests	|	Your Request was sent successfully	|			|
	|			|	comings		|	Please fill in all fields			|	ahmad	|