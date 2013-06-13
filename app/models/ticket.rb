class Ticket < ActiveRecord::Base
	Type = 'ticket'
	LIMIT = 1.minute

	attr_accessible :companions, :companions_attributes, :line, :number,
	:passport_attributes, :request_attributes, :request_id

	has_one :passport, as: :passportable, dependent: :destroy
	has_many :companions
	belongs_to :request
	has_one :applicant, through: :request
	delegate :name, to: :applicant, prefix: true

	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true

	accepts_nested_attributes_for :companions, :passport, :request

	validates :line, :request, presence: true
end
