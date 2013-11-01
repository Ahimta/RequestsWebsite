Feature: DecisionsController#{new, create}

Scenario: Not logged in
	Given 1 pending coming exists
		And I am on the new decision page
	Then I should be on the home page

@admin
Scenario Outline: Rejecting requests
	Given 1 <type> coming exists
		And I am on the requests page
	When I follow "Reject"
	Then I should be on the requests page
		And I should see "Rejected"

Examples:
	|	type		|
	|	pending		|
	|	rejected	|
	|	accepted	|

@admin
Scenario Outline: Accepting accepted requests
	Given 1 accepted <model> exists
		And I am on the requests page
	When I follow "Accept"
	Then I should be on the requests page
		And I should see "Accepted"

Examples:
	|	model		|
	|	coming		|
	|	leave		|
	|	ticket		|
	|	vacation	|

@admin
Scenario Outline: Accepting non-accepted requests
	Given 1 <type> coming exists
		And I am on the requests page
	When I follow "Accept"
	Then I should be on the new decision page
	When I fill in "decision_number" with "123"
		And I press "New Acceptance"
	Then I should be on the first decision page
		And I should see "applicant1 was granted a Coming with the decision numbered 123."
	Given I am on the requests page
	Then I should see "Accepted"

Examples:
	|	type		|
	|	pending		|
	|	rejected	|
