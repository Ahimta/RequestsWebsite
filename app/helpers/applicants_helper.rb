module ApplicantsHelper
	def get_applicants_table
		cells   = ['link_to item.name, item']
		columns = [t(:applicant_name)]

		if @current_user.admin
			cells << 'link_to item.user.username, item.user'
			columns << t(:user)
		end

		cells << 'item.requests.size'
		columns << t(:requests_count)

		[cells, columns]
	end
end
