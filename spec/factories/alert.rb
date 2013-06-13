FactoryGirl.define do
	factory :alert do
		sequence(:title) { |n| "title#{n % 3}" }
		sequence(:body) { |n| "body#{n % 3}" }
	end
end