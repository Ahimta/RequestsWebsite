Given(/^an? admin user exists?$/) do
	FactoryGirl.create :admin
end

When(/^I register a user:$/) do |user|
	visit new_user_path

	submit user, 'Register User'
end

When(/^I login:$/) do |login|
	visit requests_path

	submit login, 'Login'
end

When(/^I logout$/) do
	visit requests_path
	click_link 'Logout'
end
