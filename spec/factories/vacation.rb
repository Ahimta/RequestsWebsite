FactoryGirl.define do
	factory :vacation do
		sequence(:duration) { |n| "#{n}1" }
		sequence(:from) { |n| "#{n}2" }
		sequence(:to) { |n| "#{n}3" }

		factory :pending_vacation do
			association :request, factory: :pending_request, rtype: Vacation::Type
		end
		factory :accepted_vacation do
			association :request, factory: :accepted_request, rtype: Vacation::Type
		end
		factory :rejected_vacation do
			association :request, factory: :rejected_request, rtype: Vacation::Type
		end
	end
end