FactoryGirl.define do
	factory :leave do
		sequence(:reason, 0) { |n| "reason#{n % 3}" }
			association :request, rtype: Leave::Type
		
		factory :pending_leave do
			association :request, factory: :pending_request, rtype: Leave::Type
		end
		factory :accepted_leave do
			association :request, factory: :accepted_request, rtype: Leave::Type
		end
		factory :rejected_leave do
			association :request, factory: :rejected_request, rtype: Leave::Type
		end
	end
end