class ComingsController < ApplicationController
	before_filter :get_coming, only: [:show, :edit, :update]
	
	def get_coming
		@coming = Coming.find params[:id]
	end
	
	def show
	end
	
	def new
		@coming = Coming.new
		request = @coming.build_request
		request.build_applicant
	end
	
	def create
		@coming = Coming.new params[:coming]
		
		if @coming.save
			redirect_to requests_path, notice: t('create.notice')
		else
			flash.now[:warning] = t('create.warning')
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@coming.attributes = params[:coming]
		
		if @coming.save
			redirect_to requests_path, notice: t('coming.update.notice')
		else
			render :edit
		end
	end
end
