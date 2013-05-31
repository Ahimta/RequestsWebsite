module DecisionsHelper
	def get_acceptance(decision)
		matcher = { 'applicant' => decision.request_applicant.name,
			'type' => decision.request_rtype, 'number.' => decision.number }
		pattern = /applicant|type|number\./
		phrase = t('decisions.decision.acceptance')
		phrase.gsub pattern, matcher
	end
end
