class Request < ActiveRecord::Base
	attr_accessible :accepted, :rtype, :applicant_attributes, :applicant_id
	
	belongs_to :applicant
	delegate :name, to: :applicant, prefix: true
	
	has_one :coming
	has_one :leave
	has_one	:ticket
	has_one :vacation
	
	accepts_nested_attributes_for :applicant
	validates :applicant, presence: true
	#validates :rtype, presence: true
end
