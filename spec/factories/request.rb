FactoryGirl.define do
	factory :request do
		applicant

		factory :pending_request do
			accepted nil
		end
		factory :accepted_request do
		#decision
			accepted true
		end
		factory :rejected_request do
			accepted false
		end
	end
end