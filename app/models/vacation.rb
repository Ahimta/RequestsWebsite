class Vacation < ActiveRecord::Base
	Type = 'vacation'

	attr_accessible :duration,:from, :passport_attributes, :request_attributes,
	:request_id, :to

	has_one :passport, as: :passportable, dependent: :destroy
	belongs_to :request
	has_one :applicant, through: :request
	delegate :name, to: :applicant, prefix: true

	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true

	accepts_nested_attributes_for :passport, :request

	validates :duration, :from, :to, :request, presence: true
end
