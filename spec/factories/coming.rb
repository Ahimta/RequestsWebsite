FactoryGirl.define do
	factory :coming do
		sequence(:reason, 0) { |n| "reason#{n % 3}" }
		association :request, rtype: Coming::Type
		
		factory :pending_coming do
			association :request, factory: :pending_request, rtype: Coming::Type
		end
		factory :accepted_coming do
			association :request, factory: :accepted_request, rtype: Coming::Type
		end
		factory :rejected_coming do
			association :request, factory: :rejected_request, rtype: Coming::Type
		end
	end
end