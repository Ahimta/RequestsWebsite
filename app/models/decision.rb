class Decision < ActiveRecord::Base
	attr_accessible :number, :request_id
	
	belongs_to :request
	
	delegate :applicant, :rtype, to: :request, prefix: true
	
	validates :request_id, presence: true
	validates :number, presence: true
end
