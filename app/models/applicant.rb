class Applicant < ActiveRecord::Base
	attr_accessible :name, :user, :user_id
	
	belongs_to :user
	delegate :username, to: :user, prefix: true
	has_one :location, through: :user
	delegate :name, to: :location, prefix: true
	
	has_many :requests, dependent: :destroy
	has_many :comings, through: :requests
	has_many :leaves, through: :requests, source: :leave
	has_many :tickets, through: :requests
	has_many :vacations, through: :requests
	
	validates :name, presence: true
end
