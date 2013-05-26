Feature: Users can request leaves

Scenario Outline: I (don't)? fill in fields appropriately
	When I request a leave:
	|	leave_applicant	|	ahmad		|
	|	leave_reason	|	<reason>	|
	Then I should be on the <page> page
	And I should see "<should_see>"

Examples:
	|	reason	|	page		|	should_see							|
	|	flue	|	requests	|	Your Request was sent successfully	|
	|			|	leaves		|	Please fill in all fields			|