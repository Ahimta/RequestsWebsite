# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	en:
	{
		applicant: 'Applicant', edit_request: 'Edit Request',
		layouts:
		{
			application:
			{
				new_user: 'Register User', alert_users: 'Alert Users',
				received_requests: 'Received Requests',
				previous_requests: 'Previous Requests', new_ticket: 'Ticket',
				new_vacation: 'Vacation', new_leave: 'Leave'
			}
		},
		leaves:
		{
			form: { reason: 'Reason', body: 'Body' },
			new: { action: 'Request Leave' },
			create:
			{ 
				notice: 'Your Request was sent successfully',
				warning: 'Please fill in all fields'
			}
		},
		tickets:
		{
			form: { line: 'Line if exists', number: 'Number' },
			new: { action: 'Request Ticket' }
		},
		vacations:
		{
			form: { duration: 'Duration', day: 'Day', month: 'Month', year: 'Year' },
			new: { action: 'Request Vacation' }
		}
	}	
}