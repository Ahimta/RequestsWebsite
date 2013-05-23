class LocaleController < ApplicationController
	def update
		locale = params[:locale].try(:to_sym) == :ar ? :ar : :en
		redirect_to requests_path, locale: locale
	end
end
