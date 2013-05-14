class Vacation < ActiveRecord::Base
  attr_accessible :accepted, :applicant, :day, :duration, :month, :reviewd,
  	:year, :user_id
  
  belongs_to :user, foreign_key: :user_id
  
  validates :applicant, presence: true
  validates :day, presence: true
  validates :duration, presence: true
  validates :month, presence: true
  validates :year, presence: true
  validates :user_id, presence: true
end
