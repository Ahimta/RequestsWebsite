class Ticket < ActiveRecord::Base
	Type = 'ticket'

	attr_accessible :line, :number, :request_attributes,
  	:companions_attributes, :companions, :request_id

	has_many :companions
	belongs_to :request

	accepts_nested_attributes_for :request
	accepts_nested_attributes_for :companions

	validates :request, presence: true
	validates :line, presence: true
end
