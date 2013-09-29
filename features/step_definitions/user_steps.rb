Given(/^an? admin user exists?$/) do
	FactoryGirl.create :admin
end

Given(/^(\d+) users? exists?$/) do |quantity|
  1.upto(quantity.to_i) do |n|
    create_user(n)
  end
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
