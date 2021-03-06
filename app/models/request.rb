class Request < ActiveRecord::Base
  INCLUDES = [{requestable: [], decision: [], applicant: {user: :location}}]
	INCLUDES_FIND = [:decision, :requestable, :user, :applicant]
	INCLUDES_ALL  = {requestable: [], decision: [], applicant: {user: :location}}#[:decision, :user, :applicant]
	
	attr_protected

	belongs_to :applicant
	belongs_to :requestable, polymorphic: true, dependent: :destroy
	has_one :decision, dependent: :destroy
	delegate :name, to: :applicant, prefix: true

	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true

	accepts_nested_attributes_for :applicant
	
	# prevent duplicate Applicant records
	after_validation do
	  self.applicant = Applicant.where(name: applicant.name,
			user_id: applicant.user_id).first_or_initialize
	end
	
	def self.build_associations(record, options={})
		record.build_passport if options[:passportable]
		3.times { record.companions.build } if options[:companions]

		request = record.build_request
		request.build_applicant

		record
	end

	def ticket?; requestable_type == 'Ticket'; end
end
