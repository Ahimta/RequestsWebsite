class TicketsController < ApplicationController
	before_filter :get_ticket, only: [:edit, :update]
	
	def get_ticket
		@ticket = Ticket.find params[:id]
	end
	
	def new
		@ticket = Ticket.new
		@ticket = Request.build_associations(@ticket, passportable: true, companions: true)
	end
	
	def create
		@ticket = Ticket.new params[:ticket]
		
		if @ticket.save
			redirect_to requests_path, notice: t('create.notice')
		else
			flash.now[:warning] = t('create.warning')
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@ticket.attributes = params[:ticket]
		
		if @ticket.save
			redirect_to requests_path
		else
			render :edit
		end
	end
end
