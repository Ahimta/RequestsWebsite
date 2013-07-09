class RequestObserver < ActiveRecord::Observer
	
	# prevent duplicate Applicant records
	def before_save(request)
		applicant = request.applicant
		request.applicant = Applicant.where(name: applicant.name,
			user_id: applicant.user_id).first_or_create
	end
end
