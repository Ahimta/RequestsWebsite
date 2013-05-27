class Leave < ActiveRecord::Base
	attr_accessible :accepted, :applicant, :reason, :user_id
	
	belongs_to :user
	#belongs_to :requestable, as: :requestable
	
	validates :applicant, presence: true
	validates :reason, presence: true
	validates :user_id, presence: true
end
