module DecisionsHelper
	def get_acceptance(decision)
		matcher = { 'applicant' => decision.request_applicant.name,
			'type' => t(decision.request.requestable_type.downcase.to_sym),
			'number.' => decision.number }
		pattern = /applicant|type|number\./
		phrase = t(:acceptance)
		
		phrase.gsub pattern, matcher
	end
	
	def get_accepted_link(item)
		get_row_class(item.accepted) if item.class == Request
	end
end
