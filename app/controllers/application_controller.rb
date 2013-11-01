class ApplicationController < ActionController::Base
	protect_from_forgery
	
	# Adabted from guides.rails.com
	def default_url_options(options={})
		logger.debug "default_url_options is passed options: #{options.inspect}\n"
		{ locale: I18n.locale }
	end
	
	before_action :get_locale
	before_action :get_session
	before_action :require_login
	
	
	private
	
	def get_locale
		I18n.locale = params[:locale]
	end
	
	def get_session
		@current_user_id ||= session[:user_id]
  	
  	begin
  		@current_user ||= User.find @current_user_id if @current_user_id
  	rescue ActiveRecord::RecordNotFound
  		reset_session and redirect_to home_page_path
  	end
	end
	
	def require_admin
		redirect_to requests_path unless @current_user.admin
	end
	
	def require_owner(record)
		redirect_to requests_path unless User.authenticate(@current_user, record)
	end
	
	def require_login
		redirect_to home_page_path unless @current_user
	end
end
