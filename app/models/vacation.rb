class Vacation < ActiveRecord::Base
  attr_accessible :accepted, :applicant, :duration,:from, :to, :user_id
	
  belongs_to :user
	
  validates :applicant, presence: true
  validates :duration, presence: true
  validates :from, presence: true
  validates :to, presence: true
  validates :user_id, presence: true
end
