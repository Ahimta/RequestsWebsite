class Location < ActiveRecord::Base
	INCLUDES_FIND = { requests: nil, applicants: nil, users: User::INCLUDES_ALL }
	INCLUDES_ALL  = [:requests, :applicants, :users]
	
  attr_protected
	
	has_many :users, dependent: :destroy
	has_many :applicants, through: :users
	has_many :requests, through: :applicants
	
	validates :name, presence: true
end
