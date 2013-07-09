class TicketsController < ApplicationController
	before_filter :get_ticket, only: [:edit, :update]
	
	def new
		@ticket = Ticket.new
		@ticket = Request.build_associations(@ticket, passportable: true, companions: true)
	end
	
	def create
		@ticket = Ticket.new params[:ticket]
		
		if @ticket.save
			if not Ticket.has_right?(@ticket.request.applicant) and User::PROTECTED
				@ticket.request.destroy
				flash[:warning] = t(:create_ticket_warning)
				redirect_to requests_path and return
			end
			
			redirect_to requests_path, notice: t(:create_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@ticket.attributes = params[:ticket]
		
		if @ticket.save
			redirect_to requests_path, notice: t(:update_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :edit
		end
	end
	
	
	private
	
	def get_ticket
		@ticket = Ticket.includes(Ticket::INCLUDES_FIND).find params[:id]
		require_owner @ticket
	end
end
