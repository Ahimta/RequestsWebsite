class DecisionsController < ApplicationController
	before_filter :get_request, only: [:new, :create]
	# before_filter :require_admin
	
	def get_request
		@request = Request.find params[:request_id]
	end
	
	def show
		@decision = Decision.find params[:id]
	end
	
	def new
		case params[:d]
		when 'accept'
			if @request.accepted
				redirect_to requests_path
			else
				@decision = Decision.new
			end
		when 'reject'
			@request.update_attributes accepted: false
			@request.decision.try :destroy
			redirect_to requests_path
		else redirect_to requests_path
		end
	end
	
	def create
		@decision = Decision.new params[:decision]
		
		if @decision.save
			@request.update_attributes accepted: true
			redirect_to [@request, @decision]
		else
			flash.now[:warning] = t('create.warning')
			render :new
		end
	end
end