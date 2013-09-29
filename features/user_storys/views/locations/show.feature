Feature: locations show

@admin
Scenario Outline: applicants
	Given 1 <type> <model> exist
		And I am on the second location page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	model		|	type		|	should_see				|
	|	coming		|	pending		|	username1, location1	|
	|	coming		|	accepted	|	username1, location1	|
	|	coming		|	rejected	|	username1, location1	|
	|	ticket		|	pending		|	username1, location1	|
	|	ticket		|	accepted	|	username1, location1	|
	|	ticket		|	rejected	|	username1, location1	|
	|	vacation	|	pending		|	username1, location1	|
	|	vacation	|	rejected	|	username1, location1	|
	|	vacation	|	accepted	|	username1, location1	|
