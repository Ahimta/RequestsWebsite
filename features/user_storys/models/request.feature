Feature: Request model

Scenario Outline:
	Given 3 pending <model> exist
		And 3 accepted <model> exist
		And 3 rejected <model> exist
	When I destroy all requests
		Then all request models should be empty

Examples:
	|	model		|
	|	comings		|
	|	tickets		|
	|	vacations	|