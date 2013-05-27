class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	
	def index
		@requests = Request.all
		#@requests = Request.includes(:coming, :leave, :ticket, :vacation).includes(:applicant).all
	end
end
