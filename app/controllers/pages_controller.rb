class PagesController < ApplicationController
	skip_before_filter :require_login
	caches_page :index
	
	def index
	end
end
