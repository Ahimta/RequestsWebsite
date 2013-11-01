class ApplicantsController < ApplicationController
	before_action { @applicants_link = 'active' }
	before_action :get_applicant, except: :index
	
	def index
		@applicants = if @current_user.admin
		  Applicant.includes(Applicant::INCLUDES_ALL)
		  else
		    @current_user.try(:applicants).includes(Applicant::INCLUDES_ALL)
		  end
	end
	
	def show
	end
	
	def destroy
		@applicant.destroy
		redirect_to requests_path
	end
	
	private
	
	def get_applicant
		@applicant = Applicant.includes(Applicant::INCLUDES_FIND).find params[:id]
		require_owner @applicant
	end
end
