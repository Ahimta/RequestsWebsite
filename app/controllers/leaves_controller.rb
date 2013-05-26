class LeavesController < ApplicationController
	def show
		@leave = Leave.find params[:id]
	end
	
	def new
		@leave = Leave.new
	end
	
	def create
		@leave = Leave.new params[:leave]
		
		if @leave.save
			redirect_to requests_path, notice: t('create.notice')
		else
			flash.now[:warning] = t('create.warning')
			render :new
		end
	end
end
