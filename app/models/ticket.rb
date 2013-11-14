class Ticket < ActiveRecord::Base
	INCLUDES_FIND = Coming::INCLUDES_FIND + [:companions, :passport]
	LIMIT = 11.months

	extend Requestable
	acts_as_requestable
	acts_as_passportable

	has_many :companions

	accepts_nested_attributes_for :companions

	validates :line, presence: true
	
	def self.has_right?(applicant)
		requested = applicant.tickets.any? do |request|
			request.created_at > LIMIT.ago and request.accepted
		end
		
		not requested
	end
end
