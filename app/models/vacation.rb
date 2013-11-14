class Vacation < ActiveRecord::Base
	INCLUDES_FIND = Coming::INCLUDES_FIND + [:passport]

	extend Requestable
	acts_as_requestable
	acts_as_passportable

	validates :duration, :from, :to, presence: true

	before_validation do
		self.build_passport if passport.nil?
	end
end
