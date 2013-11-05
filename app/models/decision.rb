class Decision < ActiveRecord::Base
	ACCEPT = 'accept'
	REJECT = 'reject'
	
	attr_protected
	
	belongs_to :request
	
	delegate :applicant, to: :request, prefix: true
	
	validates :number, :request_id, presence: true
end
