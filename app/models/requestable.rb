class Requestable < ActiveRecord::Base
	Requestables  = [Coming, Leave, Ticket, Vacation]
	Movables      = [Coming, Leave]
	Passportables = [Ticket, Vacation]
	
	Requestables.each do |requestable|
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
	
	Movables.each do |movable|
		movable.class_eval do
			attr_accessible :reason
			validates :reason, presence: true
		end
	end
	
	Passportables.each do |passportable|
		passportable.class_eval do
			attr_accessible :passport_attributes
			has_one :passport, as: :passportable, dependent: :destroy
			accepts_nested_attributes_for :passport
		end
	end
end
