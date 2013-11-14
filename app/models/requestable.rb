module Requestable
	def acts_as_requestable
		class_eval do
			attr_protected

			has_one :request, as: :requestable
			has_one :applicant, through: :request
			delegate :name, to: :applicant, prefix: true
		
			has_one :user, through: :applicant
			delegate :username, to: :user, prefix: true
		
			accepts_nested_attributes_for :request
		end
	end

	def acts_as_movable
		class_eval do
			validates :reason, presence: true
		end
	end

	def acts_as_passportable
		class_eval do
			has_one :passport, as: :passportable, dependent: :destroy
			accepts_nested_attributes_for :passport

			after_validation { build_passport if passport.nil? }
		end
	end
end