class VacationsController < ApplicationController
	def index
	end
	
	def new
		@vacation = Vacation.new
	end
	
	def create
		@vacation = Vacation.new params[:vacation]
		
		if @vacation.save
			flash[:notice] = t('create.notice')
			redirect_to vacations_path
		else
			flash[:warning] = t('create.warning')
			render :new
		end
	end
end
