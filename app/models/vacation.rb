class Vacation < ActiveRecord::Base
	attr_accessible :duration, :from, :to

	validates :duration, :from, :to, presence: true
end
