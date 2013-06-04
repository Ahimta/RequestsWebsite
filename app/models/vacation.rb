class Vacation < ActiveRecord::Base
	Type = 'vacation'
	
  attr_accessible :duration,:from, :to, :request_attributes, :request_id, :passport_attributes
  
  
	has_one :passport, as: :passportable
	belongs_to :request
	has_one :applicant, through: :request
	delegate :name, to: :applicant, prefix: true
	
	has_one :user, through: :applicant
	delegate :username, to: :user, prefix: true


	accepts_nested_attributes_for :request
	accepts_nested_attributes_for :passport


  validates :duration, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :request, presence: true
end
