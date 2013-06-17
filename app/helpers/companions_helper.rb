module CompanionsHelper
	def get_companions_table
		[cells   = ['item.name', 'item.relation', 'item.birthdate'],
			columns = [t('companions.form.name'), t('companions.form.relation'),
				t('companions.form.birthdate')],
			]
	end
end