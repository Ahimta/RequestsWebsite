Feature: locations index

@admin
Scenario Outline:
	Given a pending <model> exists
		And an accepted <model> exists
		And a rejected <model> exists
		And I am on the locations page
	Then I should see the following: location0, location1, location2

Examples:
	|	model		|
	|	coming		|
	|	leave		|
	|	ticket		|
	|	vacation	|