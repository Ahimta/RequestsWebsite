class RequestObserver < ActiveRecord::Observer
	def before_save(request)
		applicant = request.applicant
		request.applicant = Applicant.where(name: applicant.name,
			user_id: applicant.user_id).first_or_initialize
	end
end
