class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	
	def index
		@requests = Request.all
		#@requests = Request.includes(:coming, :leave, :ticket, :vacation).includes(:applicant).all
	end
	
	def show
		@request = Request.find params[:id]
	end
end
