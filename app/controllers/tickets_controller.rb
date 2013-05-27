class TicketsController < ApplicationController
	def show
		@ticket = Ticket.find params[:id]
	end
	
	def new
		@ticket = Ticket.new(companions: [Companion.new, Companion.new, Companion.new])
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
end
