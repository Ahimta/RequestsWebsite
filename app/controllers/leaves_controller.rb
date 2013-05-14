class LeavesController < ApplicationController
	def index
	end
	
	def new
		@leave = Leave.new
	end
	
	def create
		@leave = Leave.new params[:leave]
		
		if @leave.save
			flash[:notice] = t('leaves.create.notice')
			redirect_to leaves_path
		else
			flash[:warning] = t('leaves.create.warning')
			render :new
		end
	end
end
