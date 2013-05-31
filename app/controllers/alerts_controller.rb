class AlertsController < ApplicationController
	before_filter { @alerts_link = 'active' }
	#hi
	def index
		@alerts = Alert.all
	end
	
	def new
		@alert = Alert.new
	end
	
	def create
		@alert = Alert.new params[:alert]
		
		if @alert.save
			redirect_to alerts_path, notice: t('create.notice')
		else
			flash.now[:warning] = t('create.warning')
			render :new
		end
	end
end
