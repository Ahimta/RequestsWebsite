class Ticket < ActiveRecord::Base
  attr_accessible :accepted, :applicant, :line, :number, :user_id,
  	:companions_attributes, :companions
  
	has_many :companions
  belongs_to :user
	
	accepts_nested_attributes_for :companions
	
  validates :applicant, presence: true
  validates :line, presence: true
  validates :user_id, presence: true
end
