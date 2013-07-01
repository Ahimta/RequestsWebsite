module CompanionsHelper
	def get_companions_table
		[cells   = ['item.name.presence or t(:na)',
			'item.relation.presence or t(:na)', 'item.birthdate.presence or t(:na)'],
			columns = [t(:name), t(:relation),
				t(:birthdate)],
			]
	end
end