# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	en:
	{
		applicant: 'Applicant',from: 'From',to: 'To', request: 'Request',
		locale: 'Arabic', coming: 'Coming', leave: 'Leave',
		ticket: 'Ticket', vacation: 'Vacation',
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
				password: 'Password', page_title: 'RequestsWebsite'
			}
		},
		requests:
		{
			back: 'Back to requests page',
			index:
			{
				empty: "You haven't requested anything yet", requests: 'Requests',
				request_type: 'Type', status: 'Status', decide: 'Accept/Reject',
				page_title: 'Requests', accept: 'Accept', reject: 'Reject',
				pending: 'Pending', accepted: 'Accepted', rejected: 'Rejected'
			}
		},
		leaves:
		{
			form: { reason: 'Reason', type: 'leave' },
			new: { action: 'Request Leave' },
			show: { header: 'Leave Request' },
			leave: { header: 'Leave Request' }
		},
		comings:
		{
			form: { reason: 'Reason', type: 'coming' },
			new: { action: 'Request Coming' },
			show: { header: 'Coming Request' },
			coming: { header: 'Coming Request' }
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
			ticket: { header: 'Ticket Request' }
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
			vacation: { header: 'Vacation Request' }
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
			index: { users: 'Users', empty: "There's no users in the mean time" },
			login:
			{
				notice: 'Logged in', warning: 'Invalid username and/or password',
				page_title: 'Login'
			},
			logout: { notice: 'Logged out' }
		},
		decisions:
		{
			form: { number: 'Decision Number' },
			new: { action: 'New Acceptance' },
			decision:
			{
				acceptance: 'applicant was granted a type with the decision numbered number.'
			}
		}
	}	
}