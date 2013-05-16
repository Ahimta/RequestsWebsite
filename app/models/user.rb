class User < ActiveRecord::Base
  attr_accessible :password, :username, :password_confirmation, :location
  has_secure_password
  
  validates :password, presence: true, on: :create
  validates :location, presence: true
end
