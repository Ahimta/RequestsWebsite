FactoryGirl.define do
	factory :alert do
		sequence(:title) { |n| "title#{n}" }
		sequence(:body) { |n| "body#{n}" }
	end
end