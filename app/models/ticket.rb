class Ticket < ActiveRecord::Base
  attr_accessible :accepted, :applicant, :line, :number, :reviewed, :user_id
  
  belongs_to :user, foreign_key: :user_id
  
  validates :applicant, presence: true
  validates :line, presence: true
  validates :user_id, presence: true
end
