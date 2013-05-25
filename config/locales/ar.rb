# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	ar:
	{
		applicant: 'المستفيد', edit_request: 'عدل الطلب',from: 'من تاريخ',to: 'إلى تاريخ',
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
				users: 'المستخدمين', alerts: 'التنبيهات', logout: 'سجل خروج', locale: 'English',
				requests: 'الطلبات'
			}
		},
		comings_leaves:
		{
			form: { reason: 'السبب' }
		},
		requests: { index: { empty: "لم تقم بتقديم طلبات حتى الآن", 	requests: 'الطلبات' } },
		leaves:
		{
			form: { reason: 'السبب' },
			new: { action: 'طلب مغادرة' },
			show: { header: 'طلب مغادرة' }
		},
		comings:
		{
			form: { reason: 'السبب' },
			new: { action: 'طلب مباشرة' },
			show: { header: 'طلب مباشرة' }
		},
		tickets:
		{
			form: { line: 'خط السير', number: 'رقم الحجز إن وجد' },
			new: { action: 'طلب تذاكر' },
			show: { header: 'طلب تذاكر' }
		},
		vacations:
		{
			form: { duration: 'المدة' },
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