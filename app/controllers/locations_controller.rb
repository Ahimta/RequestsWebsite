class LocationsController < ApplicationController
	before_filter { @locations_link = 'active' }
	before_filter :require_admin
	
	def index
		@locations = Location.includes(:requests, :applicants, :users).scoped
	end
	
	def show
		@location = Location.includes(requests: nil, applicants: nil,
			users: [:requests, :applicants, :location]).find params[:id]
	end
end
