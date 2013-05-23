class ComingsController < ApplicationController
	def index; end
	
	def new
		@coming = Coming.new
	end
	
	def create
		@coming = Coming.new params[:coming]
		
		if @coming.save
			flash[:notice] = t('create.notice')
			redirect_to comings_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
