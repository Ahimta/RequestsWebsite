class AlertsController < ApplicationController
	def index; end
	
	def new
		@alert = Alert.new
	end
	
	def create
		@alert = Alert.new params[:alert]
		
		if @alert.save
			flash[:notice] = t('create.notice')
			redirect_to alerts_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
