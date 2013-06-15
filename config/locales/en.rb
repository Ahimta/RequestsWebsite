# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	en:
	{
		applicant: 'Applicant', request: 'Request', coming: 'Coming',
		leave: 'Leave', destroy: 'Delete', edit: 'Edit', ticket: 'Ticket',
		vacation: 'Vacation', name: 'Name',type: 'Type', modify: 'Modify',
		location: 'Location', requests_count: 'Requests Count', user: 'User',
		applicants_count: 'Applicants Count', applicant_name: 'Applicant Name',
		users_count: 'Users Count', status: 'Status', back: 'Back',
		passport: 'Passport image',
		applicants:
		{
			form: { name: 'Name' },
			show: { header: 'Show Applicant' }
		},
		create:
		{
			notice: 'Your Request was sent successfully',
			warning: 'Please fill in all fields'
		},
		layouts:
		{
			application:
			{
				alerts: 'Alerts', locale: 'Arabic', locations: 'Locations',
				login: 'Login', logout: 'Logout', page_title: 'RequestsWebsite',
				password: 'Password', requests: 'Requests', username: 'Username',
				users: 'Users'
			}
		},
		locations:
		{
			form: { name: 'Location' },
			index: { locations: 'Locations' },
			locations: { empty: "There's no locations in the mean time." },
			show:
			{
				empty: "There's no locations in the mean time", header: 'Show Location'
			},
		},
		requests:
		{
			index: { requests: 'Requests' },
			requests:
			{
				accept: 'Accept', accepted: 'Accepted', decide: 'Accept/Reject',
				empty: "You haven't requested anything yet", reject: 'Reject',
				pending: 'Pending', rejected: 'Rejected'
			}
		},
		leaves:
		{
			edit: { action: 'Edit Leave Request' },
			form: { reason: 'Reason' },
			leave: { header: 'Leave Request' },
			new: { action: 'Request Leave' }
		},
		comings:
		{
			coming: { header: 'Coming Request' },
			edit: { action: 'Edit Coming Request' },
			form: { reason: 'Reason' },
			new: { action: 'Request Coming' }
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
			edit: { action: 'Edit Ticket Request' },
			form: { line: 'Line', number: 'Number if exists' },
			new: { action: 'Request Ticket' },
			show: { header: 'Ticket Request' },
			ticket: { header: 'Ticket Request' }
		},
		vacations:
		{
			edit: { action: 'Edit Vacation Request' },
			form: { duration: 'Duration', from: 'From date', to: 'To date' },
			new: { action: 'Request Vacation' },
			show: { header: 'Vacation Request' },
			vacation: { header: 'Vacation Request' }
		},
		alerts:
		{
			alerts: { empty: "There's no alerts in the mean time" },
			edit: { action: 'Edit Alert' },
			form: { title: 'Title', body: 'Body' },
			index: { alerts: 'Alerts' },
			new: { action: 'Send Alert' },
			show: { header: 'Show Alert' }
		},
		applicants:
		{
			applicants: { empty: "There's no applicants in the mean time." },
			index: { applicants: 'Applicants' },
			form: { name: 'Name' },
			show: { header: 'Show Applicant' }
		},
		users:
		{
			form: { username: 'Username', password: 'Password' },
			new: { action: 'Register User' },
			create: { notice: 'The user was updated successfully' },
			edit: { action: 'Edit User' },
			users: { empty: "There's no users in the mean time" },
			index: { users: 'Users' },
			login: { notice: 'Logged in', warning: 'Invalid username and/or password' },
			logout: { notice: 'Logged out' },
			show: { header: 'User Applicants' }
		},
		decisions:
		{
			decision:
			{
				acceptance: 'applicant was granted a type with the decision numbered number.'
			},
			form: { number: 'Decision Number' },
			new: { action: 'New Acceptance' },
			show: { header: 'Acceptance' }
		}
	}	
}