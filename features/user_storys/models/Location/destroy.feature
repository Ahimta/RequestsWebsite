Feature: Location model

Scenario Outline:
	Given 3 pending <model> exist
		And 3 accepted <model> exist
		And 3 rejected <model> exist
	When I destroy all locations
		Then user model should be empty

Examples:
	|	model		|
	|	comings		|
	|	tickets		|
	|	vacations	|