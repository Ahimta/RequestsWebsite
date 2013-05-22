class User < ActiveRecord::Base
  attr_accessible :password, :username, :location
  has_secure_password
  
  validates :password, presence: true, on: :create
  validates :location, presence: true
end
