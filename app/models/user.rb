class User < ActiveRecord::Base
	attr_accessible :password, :username, :location_attributes, :location_id
	has_secure_password
	
	belongs_to :location
	delegate :name, to: :location, prefix: true
	has_many :applicants
	
	accepts_nested_attributes_for :location
	
	validates :username, presence: true, uniqueness: { case_insensetive: true }
	validates :location, presence: true
end
