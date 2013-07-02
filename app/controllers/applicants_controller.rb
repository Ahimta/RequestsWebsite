class ApplicantsController < ApplicationController
	before_filter { @applicants_link = 'active' }
	before_filter :get_applicant, except: :index
	
	def get_applicant
		@applicant = Applicant.includes(Applicant::INCLUDES_FIND).find params[:id]
		require_owner @applicant
	end
	
	def index
		if User::PROTECTED
			@applicants = @current_user.try(:admin) ? Applicant.includes(Applicant::INCLUDES_ALL).scoped : @current_user.try(:applicants).includes(Applicant::INCLUDES_ALL)
		else
			@applicants = Applicant.includes(Applicant::INCLUDES_ALL).scoped
		end
	end
	
	def show
	end
	
	def destroy
		@applicant.destroy
		redirect_to requests_path
	end
end