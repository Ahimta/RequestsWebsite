class RequestsController < ApplicationController
	before_filter { @requests_link = 'active' }
	
	def index
		@requests = Request.all
	end
end
