class Location < ActiveRecord::Base
	attr_accessible :name
	
	has_many :users
	has_many :applicants, through: :users
	has_many :requests, through: :applicants
	has_many :decisions, through: :requests
	has_many :comings, through: :requests
	has_many :leaves, through: :requests
	has_many :tickets, through: :requests
	has_many :vacations, through: :requests
	
	validates :name, presence: true
end
