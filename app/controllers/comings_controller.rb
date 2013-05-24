class ComingsController < ApplicationController
	def show
		@coming = Coming.find params[:id]
	end
	
	def new
		@coming = Coming.new
	end
	
	def create
		@coming = Coming.new params[:coming]
		
		if @coming.save
			flash[:notice] = t('create.notice')
			redirect_to requests_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
