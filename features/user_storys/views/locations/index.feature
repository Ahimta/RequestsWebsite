Feature: locations index

@admin
Scenario Outline:
	Given 3 pending <model> exists
		And 3 accepted <model> exists
		And 3 rejected <model> exists
		And I am on the locations page
	Then I should see the following: location1, location2, location3

Examples:
	|	model		|
	|	coming		|
	|	leave		|
	|	ticket		|
	|	vacation	|