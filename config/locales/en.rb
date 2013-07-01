# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	en:
	{
		activerecord:
		{
			attributes:
			{
				alert: { title: 'Title', body: 'Body' },
				applicant: { name: 'Name' },
				coming: { reason: 'Reason' },
				companion: { birthdate: 'Birthdate', name: 'Name', relation: 'Relation' },
				decision: { number: 'Decision number' },
				leave: { reason: 'Reason' },
				location: { name: 'Location' },
				passport: { picture: 'Passport image' },
				request: { accepted: 'Accepted', applicant: { name: 'Applicant' } },
				ticket: { line: 'Line', number: 'Reservation number' },
				user: {  admin: 'Admin', password: 'Password', username: 'Username' },
				vacation: { duration: 'Number of days', from: 'From date', to: 'To date' }
			},
			models:
			{
				alert: 'Alert', applicant: 'Applicant', coming: 'Coming', companion: 'Companion',
				decision: 'Acceptance', leave: 'Leave', location: 'Location',
				passport: 'Passport image', request: 'Request', ticket: 'Ticket',
				user: 'User', vacation: 'Vacation'
			}
		},
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
		page_title: 'RequestsWebsite', line: 'Line',
		empty_locations: "There's no locations in the mean time.",
		empty_requests: "You haven't requested anything yet",
		empty_alerts: "There's no alerts in the mean time",
		empty_applicants: "There's no applicants in the mean time.",
		empty_users: "There's no users in the mean time",
		acceptance: 'applicant was granted a type with the decision numbered number..',
		taken_username: 'Username is taken',
		create_user_notice: 'The user was registered successfully',
		login_notice: 'Logged in', login_warning: 'Invalid username and/or password',
		logout_notice: 'Logged out',
		alerts: 'Alerts', applicants: 'Applicants', locations: 'Locations',
		requests: 'Requests', users: 'Users', companions: 'Companions',
		create_ticket_warning: 'You cannot request tickets more than once every 11 months',
		create_notice: 'Your request was sent successfully',
		create_warning: 'Please fill in all fields',
		create_alert_notice: 'The alert was sent successfully',
		update_alert_notice: 'The alert was updated successfully',
		update_notice: 'Your request was updated successfully',
		update_user_notice: 'User data was updated successfully',
		show_coming: 'Coming Request', show_leave: 'Leave Request',
		na: 'None', show_decision: 'Acceptance'
	}
}
