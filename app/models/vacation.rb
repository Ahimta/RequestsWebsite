class Vacation < ActiveRecord::Base
	Type = 'vacation'
	
  attr_accessible :duration,:from, :to, :request_attributes, :request_id, :passport_attributes
	
	has_one :passport, as: :passportable
  belongs_to :request
	
	accepts_nested_attributes_for :request
	accepts_nested_attributes_for :passport
	
  validates :duration, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :request, presence: true
end
