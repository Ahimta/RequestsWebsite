class Request < ActiveRecord::Base
	attr_accessible :accepted, :rtype, :applicant_attributes, :applicant_id
	
	belongs_to :applicant
	delegate :name, to: :applicant, prefix: true
	
	has_one :coming, dependent: :destroy
	has_one :leave, dependent: :destroy
	has_one	:ticket, dependent: :destroy
	has_one :vacation, dependent: :destroy
	has_one :decision
	
	accepts_nested_attributes_for :applicant
	validates :applicant, presence: true
end
