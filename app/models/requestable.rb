class Requestable < ActiveRecord::Base
	def self.dry_out
		requestables  = [Coming, Leave, Ticket, Vacation]
		movables      = [Coming, Leave]
		passportables = [Ticket, Vacation]
		
		requestables.each do |requestable|
			requestable.class_eval do
				attr_accessible :request_attributes, :request_id
				belongs_to :request
				has_one :applicant, through: :request
				delegate :name, to: :applicant, prefix: true
			
				has_one :user, through: :applicant
				delegate :username, to: :user, prefix: true
			
				accepts_nested_attributes_for :request
			end
		end
		
		movables.each do |movable|
			movable.class_eval do
				attr_accessible :reason
				validates :reason, presence: true
			end
		end
		
		passportables.each do |passportable|
			passportable.class_eval do
				attr_accessible :passport_attributes
				has_one :passport, as: :passportable, dependent: :destroy
				accepts_nested_attributes_for :passport
			end
		end
	end
end
