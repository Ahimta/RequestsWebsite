class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	before_filter :get_request, only: [:show, :destroy]
	
	def index
		@requests = if @current_user.try(:admin)
		  Request.includes(Request::INCLUDES_ALL).load
			else
				@current_user.requests.includes(Request::INCLUDES_ALL).load
			end
	end
	
	def show
	end
	
	def destroy
		@request.destroy
		redirect_to requests_path
	end
	
	private
	
	def get_request
		@request = Request.includes(Request::INCLUDES_FIND).find params[:id]
		require_owner @request
	end
end
