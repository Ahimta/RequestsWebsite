class DecisionsController < ApplicationController
	before_action :get_request, only: [:new, :create]
	before_action :require_admin
	
	def show
		@decision = Decision.find params[:id]
	end
	
	def new
		case params[:d]
		when Decision::ACCEPT
			if @request.accepted
				redirect_to requests_path
			else
				if @request.requestable_type == 'Ticket' and
					not Ticket.has_right?(@request.applicant)
					flash[:warning] = t(:create_ticket_warning)
					redirect_to requests_path and return
				end
					
				@decision = Decision.new
			end
		when Decision::REJECT
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
			flash.now[:warning] = t(:create_warning)
			render :new
		end
	end
	
	private
	
	def get_request
		@request = Request.includes(:applicant).find params[:request_id]
		require_owner @request
	end
end
