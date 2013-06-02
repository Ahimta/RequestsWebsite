Feature: Users can change locale

Scenario Outline: I am on the english/arabic version
	When I change the locale to <locale>
	Then I should be on the requests page
	And I should see: <should_see>
	But I should not see: <should_not_see>

Examples:
	|	locale	|	should_see		|	should_not_see	|
	|	arabic	|	English, طلب	|	Request, Arabic	|
	|	english	|	Request, Arabic	|	English, طلب	|
	|	english	|	Request, Arabic	|	English, طلب	|
	|	arabic	|	English, طلب	|	Request, Arabic	|
	|	arabic	|	English, طلب	|	Request, Arabic	|
	|	english	|	Request, Arabic	|	English, طلب	|