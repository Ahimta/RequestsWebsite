class AlertsController < ApplicationController
	before_filter { @alerts_link = 'active' }
	before_filter :get_alert, only: [:show, :edit, :update, :destroy]
	before_filter :require_admin, except: [:index, :show]
	
	def index
		@alerts = Alert.scoped
	end
	
	def show
	end
	
	def new
		@alert = Alert.new
	end
	
	def create
		@alert = Alert.new params[:alert]
		
		if @alert.save
			redirect_to alerts_path, notice: t(:create_alert_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@alert.attributes = params[:alert]
		
		if @alert.save
			redirect_to alerts_path, notice: t(:update_alert_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :edit
		end
	end
	
	def destroy
		@alert.destroy
		redirect_to alerts_path
	end
	
	private
	
	def get_alert
		@alert = Alert.find params[:id]
	end
end
