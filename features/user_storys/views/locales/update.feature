Feature: Users can change locale

Scenario Outline: I am on the english/arabic version
	When I change the locale to <locale>
	Then I should be on the home page
	And I should see: <should_see>
	But I should not see: <should_not_see>

Examples:
	|	locale	|	should_see	|	should_not_see	|
	|	arabic	|	English		|	Arabic			|
	|	english	|	Arabic		|	English			|
	|	english	|	Arabic		|	English			|
	|	arabic	|	English		|	Arabic			|
	|	arabic	|	English		|	Arabic			|
	|	english	|	Arabic		|	English			|