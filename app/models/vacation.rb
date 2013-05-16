class Vacation < ActiveRecord::Base
  attr_accessible :applicant, :from_day, :duration, :from_month,
  	:from_year, :to_day, :to_month, :to_year, :user_id
  
  belongs_to :user
  
  validates :applicant, presence: true
  validates :from_day, presence: true
  validates :duration, presence: true
  validates :from_month, presence: true
  validates :from_year, presence: true
  validates :to_day, presence: true
  validates :to_month, presence: true
  validates :to_year, presence: true
  validates :user_id, presence: true
end
