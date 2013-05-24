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
			flash[:notice] = t('create.notice')
			redirect_to requests_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
