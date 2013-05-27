class Coming < ActiveRecord::Base
	Type = 'coming'
	
  attr_accessible :reason, :request_attributes, :request_id
	
	belongs_to :request
	
	accepts_nested_attributes_for :request
	
	validates :request, presence: true
	validates :reason, presence: true
end
