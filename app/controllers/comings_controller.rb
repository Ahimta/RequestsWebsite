class ComingsController < ApplicationController
	before_filter :get_coming, only: [:edit, :update]
	
	def get_coming
		@coming = Coming.includes(:applicant, :request, :user).find params[:id]
		require_owner @coming
	end
	
	def new
		@coming = Coming.new
		@coming = Request.build_associations(@coming)
	end
	
	def create
		@coming = Coming.new params[:coming]
		
		if @coming.save
			redirect_to requests_path, notice: t(:create_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@coming.attributes = params[:coming]
		
		if @coming.save
			redirect_to requests_path, notice: t(:update_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :edit
		end
	end
end
