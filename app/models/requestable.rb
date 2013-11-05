module Requestable
	REQUESTABLES  = [Coming, Leave, Ticket, Vacation]
	
	REQUESTABLES.each do |requestable|
		requestable.class_eval do
			attr_protected

			has_one :request, as: :requestable
			has_one :applicant, through: :request
			delegate :name, to: :applicant, prefix: true
		
			has_one :user, through: :applicant
			delegate :username, to: :user, prefix: true
		
			accepts_nested_attributes_for :request
		end
	end
end