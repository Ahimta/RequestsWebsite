class VacationsController < ApplicationController
	before_filter :get_vacation, only: [:show, :edit, :update]
	
	def get_vacation
		@vacation = Vacation.find params[:id]
	end
	
	def show
	end
	
	def new
		@vacation = Vacation.new
		request = @vacation.build_request
		request.build_applicant
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
	
	def edit
	end
	
	def update
		@vacation.attributes = params[:vacation]
		
		if @vacation.save
			redirect_to requests_path
		else
			render :edit
		end
	end
end
