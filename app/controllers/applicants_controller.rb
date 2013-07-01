class ApplicantsController < ApplicationController
	before_filter { @applicants_link = 'active' }
	before_filter :get_applicant, except: :index
	
	def get_applicant
		@applicant = Applicant.includes(location: nil, requests: [:applicant,
			:decision, :requestable, :user], user: nil).find params[:id]
		require_owner @applicant
	end
	
	def index
		if User::PROTECTED
			@applicants = @current_user.try(:admin) ? Applicant.includes(:requests).scoped : @current_user.try(:applicants)
		else
			@applicants = Applicant.includes(:requests).scoped
		end
	end
	
	def show
	end
	
	def destroy
		@applicant.destroy
		redirect_to requests_path
	end
end