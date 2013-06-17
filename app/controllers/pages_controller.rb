class PagesController < ApplicationController
	skip_before_filter :require_login
	
	def index
		expires_in 1.day, public: true
	end
end
