class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	
	def index
		@comings   = Coming.all
		@leaves    = Leave.all
		@tickets   = Ticket.all
		@vacations = Vacation.all
	end
end
