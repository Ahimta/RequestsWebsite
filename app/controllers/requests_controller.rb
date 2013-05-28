class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	
	def index
		@requests = Request.all
		#@requests = Request.includes(:coming, :leave, :ticket, :vacation).includes(:applicant).all
	end
	
	def show
		@request = Request.find params[:id]
	end
	
	def decide
		@request = Request.find params[:id]
		
		case params[:decision]
		when 'accept' then @request.accepted = true
		when 'reject' then @request.accepted = false
		end
		
		@request.save
		redirect_to requests_path
	end
end
