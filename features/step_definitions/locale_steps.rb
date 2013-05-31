When(/^I change the locale to arabic$/) do
	visit requests_path(locale: 'en')
  click_link 'Arabic'
end

When(/^I change the locale to english$/) do
	visit requests_path(locale: 'ar')
	click_link 'English'
end