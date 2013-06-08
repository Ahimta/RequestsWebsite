class Companion < ActiveRecord::Base
	attr_accessible :birthdate, :name, :relation

	belongs_to :ticket
end
