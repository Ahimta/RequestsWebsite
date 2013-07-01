class Request < ActiveRecord::Base
	INCLUDES_FIND = [:decision, :requestable, :user, :applicant]
	INCLUDES_ALL  = [:decision, :user, :applicant]
	
	DryOut.dry_out
	
	attr_accessible :accepted, :applicant_attributes, :applicant_id

	belongs_to :applicant
	belongs_to :requestable, polymorphic: true, dependent: :destroy
	has_one :decision, dependent: :destroy
	delegate :name, to: :applicant, prefix: true

	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true

	accepts_nested_attributes_for :applicant
	
	def self.build_associations(record, options={})
		record.build_passport if options[:passportable]
		3.times { record.companions.build } if options[:companions]

		request = record.build_request
		request.build_applicant

		record
	end
end
