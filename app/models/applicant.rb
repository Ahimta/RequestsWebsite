class Applicant < ActiveRecord::Base
	attr_accessible :name, :user_id, :user
	belongs_to :user
	
	validates :name, presence: true
end
