FactoryGirl.define do
	factory :vacation do
		sequence(:duration, 0) { |n| "#{n % 3}1" }
		sequence(:from, 0) { |n| "#{n%3}2" }
		sequence(:to, 0) { |n| "#{n%3}3" }
		request

		factory :pending_vacation do
			association :request, factory: :pending_request
		end
		factory :accepted_vacation do
			association :request, factory: :accepted_request
		end
		factory :rejected_vacation do
			association :request, factory: :rejected_request
		end
	end
end