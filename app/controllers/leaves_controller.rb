class LeavesController < ApplicationController
	before_action :get_leave, only: [:edit, :update]
	
	def new
		@leave = Request.build_associations Leave.new
	end
	
	def create
		@leave = Leave.new params[:leave]
		
		if @leave.save
			redirect_to requests_path, notice: t(:create_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@leave.attributes = params[:leave]
		
		if @leave.save
			redirect_to requests_path, notice: t(:update_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :edit
		end
	end
	
	private
	
	def get_leave
		@leave = Leave.includes(Leave::INCLUDES_FIND).find params[:id]
		require_owner @leave
	end
end
