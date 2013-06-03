# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	en:
	{
		applicant: 'Applicant', request: 'Request', coming: 'Coming',
		leave: 'Leave', destroy: 'Delete', edit: 'Edit', ticket: 'Ticket',
		vacation: 'Vacation',
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
				requests: 'Requests', login: 'Login', username: 'Username',
				password: 'Password', page_title: 'RequestsWebsite',
				locations: 'Locations'
			}
		},
		locations:
		{
			show:
			{
				header: 'Show Location', applicants_count: 'Applicants Count',
				empty: "There's no locations in the mean time"
			},
			locations:
			{
				users_count: 'Users Count',
				empty: "There's no locations in the mean time."
			},
			index: { locations: 'Locations' },
			form: { name: 'Name' }
		},
		requests:
		{
			back: 'Back',
			requests:
			{
				empty: "You haven't requested anything yet", request_type: 'Type',
				status: 'Status', decide: 'Accept/Reject', accept: 'Accept',
				reject: 'Reject', pending: 'Pending', accepted: 'Accepted',
				rejected: 'Rejected'
			},
			index: { requests: 'Requests' }
		},
		leaves:
		{
			form: { reason: 'Reason', type: 'leave' },
			new: { action: 'Request Leave' },
			show: { header: 'Leave Request' },
			leave: { header: 'Leave Request' },
			edit: { action: 'Edit Leave Request' }
		},
		comings:
		{
			form: { reason: 'Reason', type: 'coming' },
			new: { action: 'Request Coming' },
			show: { header: 'Coming Request' },
			coming: { header: 'Coming Request' },
			edit: { action: 'Edit Coming Request' }
		},
		companions:
		{
			form:
			{
				name: 'Name', relation: 'Relation', companions: 'Companions',
				birthdate: 'Birthdate'
			}
		},
		tickets:
		{
			form:
			{
				line: 'Line', number: 'Number if exists', type: 'ticket'
			},
			new: { action: 'Request Ticket' },
			show: { header: 'Ticket Request' },
			ticket: { header: 'Ticket Request' },
			edit: { action: 'Edit Ticket Request' }
		},
		vacations:
		{
			form:
			{
				duration: 'Duration', type: 'vacation', from: 'From date',
				to: 'To date'
			},
			new: { action: 'Request Vacation' },
			show: { header: 'Vacation Request' },
			vacation: { header: 'Vacation Request' },
			edit: { action: 'Edit Vacation Request' }
		},
		alerts:
		{
			form: { title: 'Title', body: 'Body' },
			new: { action: 'Send Alert' },
			index: { alerts: 'Alerts' },
			alerts: { empty: "There's no alerts in the mean time" },
			edit: { action: 'Edit Alert' },
			show: { header: 'Show Alert', edit: 'Edit', destroy: 'Delete' }
		},
		applicants:
		{
			applicants:
			{
				empty: "There's no users in the mean time.",
				requests_count: 'Requests Count', applicant_name: 'Applicant Name'
			}
		},
		users:
		{
			form: { username: 'Username', password: 'Password', location: 'Location' },
			new: { action: 'Register User' },
			create: { notice: 'The user was updated successfully' },
			edit: { action: 'Edit User' },
			users:
			{
				empty: "There's no users in the mean time", modify: 'Modify',
				applicants_count: 'Applicants Count'
			},
			index: { users: 'Users' },
			login:
			{
				notice: 'Logged in', warning: 'Invalid username and/or password',
				page_title: 'Login'
			},
			logout: { notice: 'Logged out' },
			show: { header: 'User Applicants' }
		},
		decisions:
		{
			form: { number: 'Decision Number' },
			new: { action: 'New Acceptance' },
			show: { header: 'Acceptance' },
			decision:
			{
				acceptance: 'applicant was granted a type with the decision numbered number.'
			}
		}
	}	
}