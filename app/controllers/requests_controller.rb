class RequestsController < ApplicationController
	before_action { @requests_link = 'active' }
	before_action :get_request, only: [:show, :destroy]
	
	def index
		@requests = if @current_user.admin
			Request.includes(Request::INCLUDES_ALL)
			else
				@current_user.requests.includes(Request::INCLUDES_ALL)
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
