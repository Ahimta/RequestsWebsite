class Leave < ActiveRecord::Base
  attr_accessible :accepted, :applicant, :reason, :user_id
	
  belongs_to :user
	
  validates :applicant, presence: true
  validates :reason, presence: true
  validates :user_id, presence: true
end
