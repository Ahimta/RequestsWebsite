When(/^I change the locale to arabic$/) do
	visit leaves_path
  click_link 'Arabic'
end

When(/^I change the locale to english$/) do
	step "I change the locale to arabic"
	click_link 'English'
end