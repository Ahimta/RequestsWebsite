class Location < ActiveRecord::Base
	attr_accessible :name
	
	has_many :users, dependent: :destroy
	has_many :applicants, through: :users
	has_many :requests, through: :applicants
	
	validates :name, presence: true
end
