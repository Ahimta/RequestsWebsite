class User < ActiveRecord::Base
	PROTECTED = false

	attr_accessible :admin, :location, :location_attributes, :location_id,
	:password, :username

	has_secure_password

	belongs_to :location
	delegate :name, to: :location, prefix: true

	has_many :applicants, dependent: :destroy
	has_many :requests, through: :applicants
	has_many :decisions, through: :requests
	has_many :comings, through: :requests
	has_many :leaves, through: :requests
	has_many :tickets, through: :requests
	has_many :vacations, through: :requests

	accepts_nested_attributes_for :location

	validates :username, presence: true #, uniqueness: { case_insensetive: true }
	validates :location, presence: true
	
	def self.login(login)
		username, password = login[:username], login[:password]
		user = User.where("lower(username) = ?", username.downcase).first
		user.authenticate password if user
	end

	def self.authenticate(user, record)
		(record.user == user) or user.try(:admin)
	end

	def username_available?
		not User.where('lower(username) = ?', self.username.downcase).first
	end
end
