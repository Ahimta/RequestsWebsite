FactoryGirl.define do
	factory :coming do
		sequence(:reason, 0) { |n| "reason#{n % 3}" }
		request
		
		factory :pending_coming do
			association :request, factory: :pending_request
		end
		factory :accepted_coming do
			association :request, factory: :accepted_request
		end
		factory :rejected_coming do
			association :request, factory: :rejected_request
		end
	end
end