FactoryGirl.define do
	factory :user do
		sequence(:username, 0) { |n| "username#{n%3}" }
		sequence(:password, 0) { |n| "password#{n%3}" }
		location
	end
end