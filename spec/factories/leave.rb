FactoryGirl.define do
	factory :leave do
		sequence(:reason, 0) { |n| "reason#{n % 3}" }
		request
		
		factory :pending_leave do
			association :request, factory: :pending_request
		end
		factory :accepted_leave do
			association :request, factory: :accepted_request
		end
		factory :rejected_leave do
			association :request, factory: :rejected_request
		end
	end
end