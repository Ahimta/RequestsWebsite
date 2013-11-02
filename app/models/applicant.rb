class Applicant < ActiveRecord::Base
	INCLUDES_FIND = { location: nil, requests: [:applicant, :decision,
		:requestable, :user], user: nil }
	INCLUDES_ALL  = :requests
	
	attr_accessible :name, :user, :user_id
	
	belongs_to :user
	delegate :username, to: :user, prefix: true
	
	has_one :location, through: :user
	delegate :name, to: :location, prefix: true
	
	has_many :requests, dependent: :destroy
	
	validates :name, presence: true #, uniqueness: { scope: :user_id }
	
	def tickets
		get_requests 'Ticket'
	end
	
	private
	
	def get_requests(type)
		Request.where requestable_type: type, applicant_id: id
	end
end
