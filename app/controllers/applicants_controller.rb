class ApplicantsController < ApplicationController
	before_filter { @applicants_link = 'active' }
	before_filter :get_applicant, except: :index
	
	def get_applicant
		@applicant = Applicant.find params[:id]
		require_owner @applicant
	end
	
	def index
		@applicants = Applicant.scoped
		@applicants = @current_user.try(:admin) ? Applicant.scoped : @current_user.try(:applicants)
	end
	
	def show
	end
	
	def destroy
		@applicant.destroy
		redirect_to requests_path
	end
end