FactoryGirl.define do
	factory :applicant do
		user
		sequence(:name, 0) { |n| "applicant#{n%3}" }
	end
end