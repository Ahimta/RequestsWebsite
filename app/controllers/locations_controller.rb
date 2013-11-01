class LocationsController < ApplicationController
	before_action { @locations_link = 'active' }
	before_action :require_admin
	
	def index
		@locations = Location.includes(Location::INCLUDES_ALL)
	end
	
	def show
		@location = Location.includes(Location::INCLUDES_FIND).find params[:id]
	end
end
