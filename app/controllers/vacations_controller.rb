class VacationsController < ApplicationController
	def new
		@vacation = Vacation.new
	end
	
	def create
		@vacation = Vacation.new params[:vacation]
		
		if @vacation.save
			flash[:notice] = t('create.notice')
			redirect_to requests_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
