Given(/^an? admin user exists?$/) do
	FactoryGirl.create :admin
end

Given(/^(\d+) users? exists?$/) do |quantity|
  1.upto(quantity.to_i) do |n|
    create_user(n)
  end
end

Given(/^I am logged in as regular user$/) do
	steps %Q{
		Given 1 user exists
		When I login:
  		|	login_username	|	username1	|
  		|	login_password	|	password1	|
	}
end

Given(/^I am logged in as admin$/) do
	steps %Q{
		Given an admin user exists
		When I login:
  		|	login_username	|	admin	|
  		|	login_password	|	admin	|
	}
end

Given(/^I am logged in as not$/) {}

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
