class Vacation < ActiveRecord::Base
	Type = 'vacation'

	attr_accessible :duration, :from, :to

	validates :duration, :from, :to, presence: true
end
