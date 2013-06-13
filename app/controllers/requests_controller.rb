class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	before_filter :get_request, only: [:show, :destroy]
	
	def get_request
		@request = Request.find params[:id]
		require_owner @request
	end
	
	def index
		if User::PROTECTED
			@requests = @current_user.try(:admin) ? Request.scoped : @current_user.try(:requests)
		else
			@requests = Request.scoped
		end
	end
	
	def show
	end
	
	def destroy
		@request.destroy
		redirect_to requests_path
	end
end
