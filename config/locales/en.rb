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
				new_user: 'Register User', alert_users: 'Alert Users',
				received_requests: 'Received Requests',
				previous_requests: 'Previous Requests', new_ticket: 'Ticket',
				new_vacation: 'Vacation', new_leave: 'Leave',
				logout: 'Logout'
			}
		},
		partials:
		{
			navbar:
			{
				new_user: 'Register User', alert_users: 'Alert Users',
				received_requests: 'Received Requests',
				previous_requests: 'Previous Requests', new_ticket: 'Ticket',
				new_vacation: 'Vacation', new_leave: 'Leave',
				logout: 'Logout'
			},
			navbar_dropdown:
				{
					new_coming: 'Coming', new_leave: 'Leave', new_ticket: 'Ticket',
					new_vacation: 'Vacation'
				}
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
			form: { reason: 'Reason', body: 'Body' },
			new: { action: 'Request Coming' },
			show: { header: 'Coming Request' }
		},
		tickets:
		{
			form: { line: 'Line', number: 'Number if exists' },
			new: { action: 'Request Ticket' }
		},
		vacations:
		{
			form: { duration: 'Duration', day: 'Day', month: 'Month', year: 'Year' },
			new: { action: 'Request Vacation' }
		},
		alerts:
		{
			form: { title: 'Title', body: 'Body' },
			new: { action: 'Send Alert' },
			index: { alerts: 'Alerts', empty: "There's no alerts in the mean time" }
		}
	}	
}