FactoryGirl.define do
	factory :leave do
		sequence(:reason) { |n| "reason#{n}" }

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