class User < ActiveRecord::Base
  attr_accessible :password_digest, :username, :password_confirmation
  
  has_many :leaves
  has_many :tickets
  has_many :vacations
  
  validates :password, presence: true, on: :create
end
