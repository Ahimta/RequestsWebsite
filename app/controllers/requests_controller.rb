class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	before_filter :get_request, only: [:show, :destroy]
	
	def get_request
		@request = Request.includes(:decision, :requestable, :user, :applicant)
			.find params[:id]
		require_owner @request
	end
	
	def index
		if User::PROTECTED
			@requests = @current_user.try(:admin) ? Request.includes(:decision, :user, :applicant).scoped : @current_user.try(:requests)
		else
			@requests = Request.includes(:decision, :user, :applicant).scoped
		end
	end
	
	def show
	end
	
	def destroy
		@request.destroy
		redirect_to requests_path
	end
end
