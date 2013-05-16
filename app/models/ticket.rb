class Ticket < ActiveRecord::Base
  attr_accessible :accepted, :applicant, :line, :number, :user_id
  
  belongs_to :user
  
  validates :applicant, presence: true
  validates :line, presence: true
  validates :user_id, presence: true
end
