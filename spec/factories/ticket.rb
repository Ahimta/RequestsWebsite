FactoryGirl.define do
	factory :ticket do
		sequence(:line, 0) { |n| "line#{n%3}" }
		request

		factory :pending_ticket do
			association :request, factory: :pending_request
		end
		factory :accepted_ticket do
			association :request, factory: :accepted_request
		end
		factory :rejected_ticket do
			association :request, factory: :rejected_request
		end
	end
end