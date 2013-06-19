class Ticket < ActiveRecord::Base
	Type = 'ticket'
	LIMIT = 11.months

	attr_accessible :companions, :companions_attributes, :line, :number

	has_many :companions

	accepts_nested_attributes_for :companions

	validates :line, presence: true
	
	def self.has_right?(applicant)
		requested = applicant.tickets.any? do |ticket|
			ticket.created_at > LIMIT.ago and ticket.request.accepted
		end
		
		not requested
	end
end
