class User < ActiveRecord::Base
	PROTECTED = true
	INCLUDES_FIND  = { requests: :applicant, applicants: :requests, location: nil }
	INCLUDES_ALL = [:requests, :applicants, :location]

  attr_protected

	has_secure_password

	belongs_to :location
	delegate :name, to: :location, prefix: true, allow_nil: true

	has_many :applicants, dependent: :destroy
	has_many :requests, through: :applicants

	accepts_nested_attributes_for :location

	validates :username, presence: true
	validates :username, uniqueness: { case_sensetive: false,
		case_insensetive: true }
	
	# prevent duplicate Location records
	after_validation do
		self.location = Location.where(name: location.name).
			first_or_initialize
	end
	
	before_validation do
		username.downcase!
		self.password_confirmation = password
	end
	
	# prevent admin users from being destroyed
	before_destroy { false if admin }
	
	def self.login(login)
		username, password = login[:username], login[:password]
		
		user = User.where(username: username.downcase).first
		
		user.authenticate password if user
	end

	def self.authenticate(user, record)
		(record.user == user) or user.admin
	end
	
	def taken?
		username.try(:present?) and User.where(username: username).first
	end
end
