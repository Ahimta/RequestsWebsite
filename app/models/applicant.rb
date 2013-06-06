class Applicant < ActiveRecord::Base
	attr_accessible :name, :user_id, :user
	
	belongs_to :user
	delegate :username, to: :user, prefix: true
	has_one :location, through: :user
	delegate :name, to: :location, prefix: true
	
	has_many :requests, dependent: :destroy
	has_many :comings, through: :requests
	has_many :leaves, through: :requests
	has_many :tickets, through: :requests
	has_many :vacations, through: :requests
	
	validates :name, presence: true
end
