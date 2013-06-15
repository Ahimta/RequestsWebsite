class RequestObserver < ActiveRecord::Observer
	def before_validation(request)
		applicant = request.applicant
		request.applicant = Applicant.where(name: applicant.try(:name),
			user_id: applicant.try(:user_id)).first_or_initialize
	end
end
