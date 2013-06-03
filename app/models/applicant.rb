class Applicant < ActiveRecord::Base
	attr_accessible :name, :user_id, :user
	
	belongs_to :user
	
	has_many :requests
	has_many :comings, through: :requests
	has_many :leaves, through: :requests
	has_many :tickets, through: :requests
	has_many :vacations, through: :requests
	
	validates :name, presence: true
end
