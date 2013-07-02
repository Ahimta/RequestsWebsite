module ApplicantsHelper
	def get_applicants_table
		[cells   = ['link_to item.name, item', 'item.requests.size'],
			columns = [t(:applicant_name), t(:requests_count)]]
	end
end
