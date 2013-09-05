Feature: locations show

@admin
Scenario Outline: applicants
	Given a <type> <model> exist
		And I am on the second location page
	Then I should see the following: <should_see>
		But I should not see the following: <should_not_see>

Examples:
	|	model		|	type		|	should_see									|	should_not_see																			|
	|	coming		|	pending		|	username0, location0	|	username1, location1, username2, location2	|
	|	coming		|	accepted	|	username1, location1	|	username0, location0, username2, location2	|
	|	coming		|	rejected	|	username2, location2	|	username0, location0, username0, location0	|
	|	ticket		|	pending		|	username0, location0	|	username1, location1, username2, location2	|
	|	ticket		|	accepted	|	username1, location1	|	username0, location0, username2, location2	|
	|	ticket		|	rejected	|	username2, location2	|	username0, location0, username1, location1	|
	|	vacation	|	pending		|	username0, location0	|	username1, location1, username2, location2	|
	|	vacation	|	rejected	|	username1, location1	|	username0, location0, username2, location2	|
	|	vacation	|	accepted	|	username2, location2	|	username0, location0, username1, location1	|
