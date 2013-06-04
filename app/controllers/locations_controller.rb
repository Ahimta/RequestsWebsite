class LocationsController < ApplicationController
	before_filter { @locations_link = 'active' }
	#before_filter :ensure_admin
	
	def index
		@locations = Location.all
	end
	
	def show
		@location = Location.find params[:id]
	end
end