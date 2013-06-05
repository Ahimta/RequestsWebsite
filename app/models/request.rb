class Request < ActiveRecord::Base
	attr_accessible :accepted, :rtype, :applicant_attributes, :applicant_id
	
	belongs_to :applicant
	delegate :name, to: :applicant, prefix: true
	
	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true
	
	has_one :coming, dependent: :destroy
	has_one :leave, dependent: :destroy
	has_one	:ticket, dependent: :destroy
	has_one :vacation, dependent: :destroy
	has_one :decision
	
	before_validation do
		applicant = self.applicant
		self.applicant = Applicant.where(name: applicant.name,
			user_id: applicant.user_id).first_or_initialize
	end
	
	accepts_nested_attributes_for :applicant
	validates :applicant, presence: true
	
	
	def self.build_associations(record, options={})
		record.build_passport if options[:passportable]
		3.times { record.companions.build } if options[:companions]
		
		request = record.build_request
		request.build_applicant
		
		record
	end
end
