class Vacation < ActiveRecord::Base
	INCLUDES_FIND = Coming::INCLUDES_FIND + [:passport]
	
	attr_accessible :duration, :from, :to

	validates :duration, :from, :to, presence: true
end
