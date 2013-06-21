module CompanionsHelper
	def get_companions_table
		[cells   = ['item.name', 'item.relation', 'item.birthdate'],
			columns = [t(:name), t(:relation),
				t(:birthdate)],
			]
	end
end