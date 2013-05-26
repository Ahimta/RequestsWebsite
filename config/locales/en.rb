# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	en:
	{
		applicant: 'Applicant', edit_request: 'Edit Request',from: 'From',to: 'To',
		request: 'Request', locale: 'Arabic', coming: 'Coming', leave: 'Leave',
		ticket: 'Ticket', vacation: 'Vacation', request_type: 'Type',
		create:
	{
			notice: 'Your Request was sent successfully',
			warning: 'Please fill in all fields'
		},
		layouts:
		{
			application:
			{
				users: 'Users', alerts: 'Alerts', logout: 'Logout', locale: 'Arabic',
				requests: 'Requests'
			}
		},
		comings_leaves:
		{
			form: { reason: 'Reason' }
		},
		requests: { index: { empty: "You haven't requested anything yet", requests: 'Requests' } },
		leaves:
		{
			form: { reason: 'Reason', body: 'Body' },
			new: { action: 'Request Leave' },
			show: { header: 'Leave Request' }
		},
		comings:
		{
			form: { reason: 'Reason' },
			new: { action: 'Request Coming' },
			show: { header: 'Coming Request' }
		},
		tickets:
		{
			form: { line: 'Line', number: 'Number if exists' },
			new: { action: 'Request Ticket' },
			show: { header: 'Ticket Request' }
		},
		vacations:
		{
			form: { duration: 'Duration' },
			new: { action: 'Request Vacation' },
			show: { header: 'Vacation Request' }
		},
		alerts:
		{
			form: { title: 'Title', body: 'Body' },
			new: { action: 'Send Alert' },
			index: { alerts: 'Alerts', empty: "There's no alerts in the mean time" }
		},
		users:
		{
			form: { username: 'Username', password: 'Password', location: 'Location' },
			new: { action: 'Register User' },
			index: { users: 'Users', empty: "There's no users in the mean time" }
		}
	}	
}