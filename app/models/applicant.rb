class Applicant < ActiveRecord::Base
	attr_accessible :name, :user_id, :user
	
	belongs_to :user
	has_many :requests
	
	validates :name, presence: true
end
