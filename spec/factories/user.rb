FactoryGirl.define do
	factory :user do
		sequence(:username) { |n| "username#{n}" }
		sequence(:password) { |n| "password#{n}" }
		location
	end

	factory :applicant do
		user
		sequence(:name) { |n| "applicant#{n}" }
	end
end