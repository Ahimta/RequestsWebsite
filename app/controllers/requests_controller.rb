class RequestsController < ApplicationController
	def index
		@comings   = Coming.all
		@leaves    = Leave.all
		@tickets   = Ticket.all
		@vacations = Vacation.all
	end
end
