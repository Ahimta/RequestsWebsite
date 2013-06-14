class Coming < ActiveRecord::Base
	Type = 'coming'

	attr_accessible :reason, :request_attributes, :request_id

	belongs_to :request
	has_one :applicant, through: :request
	delegate :name, to: :applicant, prefix: true

	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true

	accepts_nested_attributes_for :request

	validates :reason, presence: true
end
