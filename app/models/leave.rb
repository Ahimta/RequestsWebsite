class Leave < ActiveRecord::Base
  attr_accessible :accepted, :applicant, :reason, :reviewed, :user_id
  
  belongs_to :user, foreign_key: :user_id
  
  validates :applicant, presence: true
  validates :reason, presence: true
  validates :user_id, presence: true
end
