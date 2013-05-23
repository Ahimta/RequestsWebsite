Feature: Users can change locale

Scenario: I am on the english version
	When I change the locale to arabic
	Then I should be on the requests page
	And I should see: English, طلب
	But I should not see: Request, Arabic

Scenario: I am on the arabic version
	When I change the locale to english
	Then I should be on the requests page
	And I should see: Request, Arabic
	But I should not see: English, طلب