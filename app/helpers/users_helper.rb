module UsersHelper
	def get_users_table
		[cells   = ['link_to item.username, item',
			'link_to item.location_name, item.location', 'item.applicants.size',
			'item.requests.size',
		"render '/shared/modify_btn_group', edit_path: edit_user_path(item), resource: item"],
		columns = [t(:username), t(:location), t(:applicants_count),
			t(:requests_count), t(:modify)]]
	end
	
	def username_taken_msg(user)
		if user.taken?
			content_tag :section, t(:taken_username), class: 'label label-warning'
		end
	end
end