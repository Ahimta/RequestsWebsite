class User < ActiveRecord::Base
	attr_accessible :password, :username, :location_attributes, :location_id
	has_secure_password
	
	belongs_to :location
	delegate :name, to: :location, prefix: true
	
	has_many :applicants
	has_many :requests, through: :applicants
	has_many :decisions, through: :requests
	has_many :comings, through: :requests
	has_many :leaves, through: :requests
	has_many :tickets, through: :requests
	has_many :vacations, through: :requests
	
	
	before_validation do
		location = self.location
		self.location = Location.where(name: location.name).first_or_initialize
	end
	
	
	accepts_nested_attributes_for :location
	
	validates :username, presence: true #, uniqueness: { case_insensetive: true }
	validates :location, presence: true
	
	def self.login(login)
		username, password = login[:username], login[:password]
		user = User.where("lower(username) = ?", username.downcase).first
		user.authenticate password if user
	end
	
	def self.authenticate(user, record)
		(record.user == user) or user.try(:admin) or false
	end
end
