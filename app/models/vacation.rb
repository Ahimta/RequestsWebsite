class Vacation < ActiveRecord::Base
  attr_accessible :duration,:from, :to, :request_attributes, :request_id
	
  belongs_to :request
	
	accepts_nested_attributes_for :request
	
  validates :duration, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :request, presence: true
end
