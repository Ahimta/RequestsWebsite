class VacationsController < ApplicationController
	def show
		@vacation = Vacation.find params[:id]
	end
	
	def new
		@vacation = Vacation.new
	end
	
	def create
		@vacation = Vacation.new params[:vacation]
		
		if @vacation.save
			redirect_to requests_path, notice: t('create.notice')
		else
			flash.now[:warning] = t('create.warning')
			render :new
		end
	end
end
