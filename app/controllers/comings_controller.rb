class ComingsController < ApplicationController
	def show
		@coming = Coming.find params[:id]
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
end
