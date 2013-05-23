class TicketsController < ApplicationController
	def new
		@ticket = Ticket.new
	end
	
	def create
		@ticket = Ticket.new params[:ticket]
		
		if @ticket.save
			flash[:notice] = t('create.notice')
			redirect_to requests_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
