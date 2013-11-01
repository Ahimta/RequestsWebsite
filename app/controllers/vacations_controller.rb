class VacationsController < ApplicationController
	before_action :get_vacation, only: [:edit, :update]
	
	def new
		@vacation = Request.build_associations(Vacation.new, passportable: true)
	end
	
	def create
		@vacation = Vacation.new params[:vacation]
		
		if @vacation.save
			redirect_to requests_path, notice: t(:create_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :new
		end
	end
	
	def edit
	end
	
	def update
		@vacation.attributes = params[:vacation]
		
		if @vacation.save
			redirect_to requests_path, notice: t(:update_notice)
		else
			flash.now[:warning] = t(:create_warning)
			render :edit
		end
	end
	
	
	private
	
	def get_vacation
		@vacation = Vacation.includes(Vacation::INCLUDES_FIND).find params[:id]
		require_owner @vacation
	end
end
