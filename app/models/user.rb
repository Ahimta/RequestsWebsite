class User < ActiveRecord::Base
  attr_accessible :password, :username, :location
  has_secure_password
	
	validates :username, presence: true, uniqueness: { case_insensetive: true }
	validates :location, presence: true
end
