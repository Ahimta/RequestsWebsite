# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	ar:
	{
		applicant: 'المستفيد', edit_request: 'عدل الطلب',from: 'من',to: 'إلى',
		request: 'طلب', locale: 'English', coming: 'مباشرة', leave: 'مغادرة',
		ticket: 'تذكرة', vacation: 'عطلة', request_type: 'نوع الطلب',
		create:
	{
			notice: 'تم إرسال طلبك بنجاح',
			warning: 'الرجاء ملء جميع الحقول'
		},
		layouts:
		{
			application:
			{
				new_user: 'سجل المستخدم', alert_users: 'إرسال تنبيهات',
				received_requests: 'الطلبات المستلمة',
				previous_requests: 'الطلبات السابقة', new_ticket: 'تذاكر',
				new_vacation: 'إجازة', new_leave: 'مغادرة',
				logout: 'سجل خروج'
			}
		},
		partials:
		{
			navbar:
			{
				new_user: 'سجل المستخدم', alert_users: 'إرسال تنبيهات',
				received_requests: 'الطلبات المستلمة',
				previous_requests: 'الطلبات السابقة', logout: 'سجل خروج'
			},
			navbar_dropdown:
				{ new_coming: 'مباشرة', new_leave: 'مغادرة', new_ticket: 'تذاكر', new_vacation: 'إجازة' }
		},
		requests: { index: { empty: "لم تقم بتقديم طلبات حتى الآن", 	requests: 'الطلبات' } },
		leaves:
		{
			form: { reason: 'السبب', body: 'المحتوى' },
			new: { action: 'طلب مغادرة' }
		},
		comings:
		{
			form: { reason: 'السبب', body: 'المحتوى' },
			new: { action: 'طلب مباشرة' }
		},
		tickets:
		{
			form: { line: 'خط السير', number: 'رقم الحجز إن وجد' },
			new: { action: 'طلب تذاكر' }
		},
		vacations:
		{
			form: { duration: 'المدة', day: 'يوم', month: 'شهر', year: 'سنة' },
			new: { action: 'طلب إجازة' }
		},
		alerts:
		{
			form: { title: 'العنوان', body: 'المحتوى' },
			new: { action: 'إرسال تنبيه' },
			index: { alerts: 'التنبيهات', empty: 'ﻻ يوجد تنبيهات حالياً' }
		}
	}	
}