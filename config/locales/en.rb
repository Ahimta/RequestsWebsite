# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	en:
	{
		applicant: 'Applicant', request: 'Request', coming: 'Coming',
		leave: 'Leave', destroy: 'Delete', edit: 'Edit', ticket: 'Ticket',
		vacation: 'Vacation', name: 'Name', type: 'Type', modify: 'Modify',
		location: 'Location', requests_count: 'Requests Count', user: 'User',
		applicants_count: 'Applicants Count', applicant_name: 'Applicant Name',
		users_count: 'Users Count', status: 'Status', back: 'Back', body: 'Body',
		passport: 'Passport image', reason: 'Reason', relation: 'Relation',
		birthdate: 'Birthdate', notice: 'Your Request was sent successfully',
		warning: 'Please fill in all fields', locale: 'Arabic', number: 'Number',
		duration: 'Duration', decision_number: 'Decision Number', title: 'Title',
		username: 'Username', from: 'From date', to: 'To date', reject: 'Reject',
		password: 'Password', accept: 'Accept', accepted: 'Accepted',
		decide: 'Accept/Reject', pending: 'Pending', rejected: 'Rejected',
		new_acceptance: 'Issue Acceptance', login: 'Login', logout: 'Logout',
		show_applicant: 'Applicant Data', show_location: 'Location Data',
		edit_leave: 'Edit Leave Request', edit_coming: 'Edit Coming Request',
		new_coming: 'Request Coming', new_user: 'Register User',
		edit_ticket: 'Edit Ticket Request', new_ticket: 'Request Ticket',
		new_decision: 'New Acceptance', show_acceptance: 'Acceptance',
		show_user: 'User Data', show_alert: 'Alert', new_alert: 'Send Alert',
		edit_alert: 'Edit Alert', show_ticket: 'Ticket Request',
		show_vacation: 'Vacation Request', edit_user: 'Edit User',
		new_vacation: 'Request Vacation', edit_vacation: 'Edit Vacation Request',
		new_leave: 'Request Leave', edit_leave: 'Edit Leave Request',
		page_title: 'RequestsWebsite', 
		plurals:
		{
			alert: 'Alerts', applicant: 'Applicants', location: 'Locations',
			request: 'Requests', user: 'Users', companions: 'Companions'
		},
		create:
		{
			notice: 'Your Request was sent successfully',
			warning: 'Please fill in all fields'
		},
		locations:
		{
			locations: { empty: "There's no locations in the mean time." }
		},
		requests:
		{
			requests: { empty: "You haven't requested anything yet" }
		},
		tickets:
		{
			create: { warning: 'You cannot request tickets more than once every 11 months' },
			form: { line: 'Line', number: 'Number if exists' }
		},
		alerts: { alerts: { empty: "There's no alerts in the mean time" } },
		applicants:
		{
			applicants: { empty: "There's no applicants in the mean time." }
		},
		users:
		{
			create: { notice: 'The user was updated successfully' },
			users: { empty: "There's no users in the mean time" },
			login: { notice: 'Logged in', warning: 'Invalid username and/or password' },
			logout: { notice: 'Logged out' },
		},
		decisions:
		{
			decision:
			{
				acceptance: 'applicant was granted a type with the decision numbered number.'
			},
		}
	}	
}