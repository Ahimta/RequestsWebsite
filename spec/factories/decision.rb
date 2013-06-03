FactoryGirl.define do
	factory :decision do
		sequence(:number, 0) { |n| n % 3 }
	end
end