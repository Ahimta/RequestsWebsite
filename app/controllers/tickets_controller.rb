class TicketsController < ApplicationController
	def index
	end
	
	def new
		@ticket = Ticket.new
	end
	
	def create
		@ticket = Ticket.new params[:ticket]
		
		if @ticket.save
			flash[:notice] = t('create.notice')
			redirect_to tickets_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
