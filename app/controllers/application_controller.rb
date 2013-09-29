class ApplicationController < ActionController::Base
  protect_from_forgery
	
	# Adabted from guides.rails.com
	def default_url_options(options={})
		logger.debug "default_url_options is passed options: #{options.inspect}\n"
		{ locale: I18n.locale }
	end
	
	before_filter :get_locale
	before_filter :get_session
	before_filter :require_login
	
	
	private
	
	def get_locale
		I18n.locale = if params[:locale] == 'ar' then :ar
		else :en
		end
	end
	
	def get_session
		id = session[:user_id]
  	
  	begin
  		@current_user ||= User.find id if id
  	rescue ActiveRecord::RecordNotFound
  		reset_session and redirect_to home_page_path
  	end
	end
	
	def require_admin
		unless @current_user.try(:admin)
			redirect_to requests_path
		end
	end
	
	def require_owner(record)
		unless User.authenticate(@current_user, record)
			redirect_to requests_path
		end
	end
	
	def require_login
		unless @current_user
			redirect_to home_page_path
		end
	end
end
