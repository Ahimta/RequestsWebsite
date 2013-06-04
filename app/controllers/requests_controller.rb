class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	before_filter :get_request, only: [:show, :destroy]
	
	def get_request
		@request = Request.find params[:id]
	end
	
	def index
		@requests = Request.all
	end
	
	def show
	end
	
	def destroy
		@request.destroy
		redirect_to requests_path
	end
end
