class LocaleController < ApplicationController
	def update
		locale = params[:locale].try(:to_sym) == :ar ? :ar : :en
		redirect_to leaves_path, locale: locale
	end
end
