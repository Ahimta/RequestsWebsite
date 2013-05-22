class LocaleController < ApplicationController
	def update
		locale = params[:locale] == 'ar' ? :ar : :en
		redirect_to leaves_path, locale: locale
	end
end
