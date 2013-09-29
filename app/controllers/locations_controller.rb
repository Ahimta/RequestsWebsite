class LocationsController < ApplicationController
	before_filter { @locations_link = 'active' }
	before_filter :require_admin
	
	def index
		@locations = Location.includes(Location::INCLUDES_ALL).load
	end
	
	def show
		@location = Location.includes(Location::INCLUDES_FIND).find params[:id]
	end
end
