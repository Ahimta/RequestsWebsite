module LocationsHelper
	def get_locations_table
		[cells   = ['link_to item.name, item', 'item.users.size',
			'item.applicants.size', 'item.requests.size'],
		columns = [t('locations.form.name'), t(:users_count), t(:applicants_count),
			t(:requests_count)]]
	end
end