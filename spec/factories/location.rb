FactoryGirl.define do
	factory :location do
		sequence(:name, 0) { |n| "location#{n%3}" }
	end
end