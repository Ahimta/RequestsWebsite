class User < ActiveRecord::Base
  attr_accessible :password, :username, :password_confirmation
  has_secure_password
  
  has_many :leaves
  has_many :tickets
  has_many :vacations
  
  validates :password, presence: true, on: :create
end
