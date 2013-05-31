class ApplicationController < ActionController::Base
  protect_from_forgery
	
  # Adabted from guides.rails.com
	def default_url_options(options={})
		logger.debug "default_url_options is passed options: #{options.inspect}\n"
		{ locale: I18n.locale }
	end
	
  before_filter do
  	locale = params[:locale].try :to_sym
  	
  	case locale
  	when :ar then I18n.locale = :ar
  	when :en then I18n.locale = :en
  	end
  	
  	id = session[:user_id]
  	@current_user ||= User.find id if id
  end
end
