module UsersHelper
	def get_users_table
		[cells   = ['link_to item.username, item',
			'link_to item.location_name, item.location', 'item.applicants.size',
			'item.requests.size',
		"render '/shared/modify_btn_group', edit_path: edit_user_path(item), resource: item"],
		columns = [t('users.form.username'), t('locations.form.name'),
		t(:applicants_count), t(:requests_count), t(:modify)]]
	end
end