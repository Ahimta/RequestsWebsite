class LeavesController < ApplicationController
	before_filter :get_leave, only: [:edit, :update]
	
	def get_leave
		@leave = Leave.find params[:id]
		# require_owner @leave
	end
	
	def new
		@leave = Leave.new
		@leave = Request.build_associations(@leave)
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
	
	def edit
	end
	
	def update
		@leave.attributes = params[:leave]
		
		if @leave.save
			redirect_to requests_path
		else
			render :edit
		end
	end
end
