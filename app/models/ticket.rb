class Ticket < ActiveRecord::Base
	Type = 'ticket'

	attr_accessible :line, :number, :request_attributes,
  	:companions_attributes, :companions, :request_id, :passport_attributes


	has_one :passport, as: :passportable
	has_many :companions
	belongs_to :request
	has_one :applicant, through: :request
	delegate :name, to: :applicant, prefix: true
	
	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true


	accepts_nested_attributes_for :request
	accepts_nested_attributes_for :companions
	accepts_nested_attributes_for :passport


	validates :request, presence: true
	validates :line, presence: true
end
