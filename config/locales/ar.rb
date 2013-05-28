# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	ar:
	{
		applicant: 'المستفيد',from: 'من تاريخ',to: 'إلى تاريخ', request: 'طلب',
		locale: 'English', coming: 'مباشرة', leave: 'مغادرة',
		ticket: 'تذاكر', vacation: 'إجازة',
		create:
		{
			notice: 'تم إرسال طلبك بنجاح',
			warning: 'الرجاء تعبئة جميع الحقول'
		},
		layouts:
		{
			application:
			{
				users: 'المستخدمين', alerts: 'التنبيهات', logout: 'تسجيل خروج', locale: 'English',
				requests: 'الطلبات', login: 'تسجيل دخول', username: 'اسم المستخدم',
				password: 'كلمة المرور', page_title: 'خدمة العطل'
			}
		},
		requests:
		{
			index:
			{
				empty: "لم تقم بتقديم أي طلب حتى الآن", requests: 'الطلبات',
				request_type: 'التوع', status: 'الحالة', decide: 'قبول/رفض',
				page_title: 'الطلبات', accept: 'قبول', reject: 'رفض',
				pending: 'جاري', accepted: 'تم القبول', rejected: 'تم الرفض'
			}
		},
		leaves:
		{
			form: { reason: 'السبب', type: 'إجازة' },
			new: { action: 'طلب مغادرة' },
			show: { header: 'طلب مغادرة' },
			leave: { header: 'طلب مغادرة' }
		},
		comings:
		{
			form: { reason: 'السبب', type: 'مباشرة' },
			new: { action: 'طلب مباشرة' },
			show: { header: 'طلب مباشرة' },
			coming: { header: 'طلب مغادرة' }
		},
		companions:
		{
			form:
			{
				name: 'الاسم', relation: 'صلة القرابة', companions: 'المرافقون',
				birthdate: 'تاريخ الميلاد'
			}
		},
		tickets:
		{
			form:
			{
				line: 'خط السير', number: 'رقم الحجز إن وجد', type: 'تذاكر'
			},
			new: { action: 'طلب تذاكر' },
			show: { header: 'طلب تذاكر' },
			ticket: { header: 'طلب تذاكر' }
		},
		vacations:
		{
			form:
			{
				duration: 'عدد الأيام', type: 'إجازة', from: 'من تاريخ',
				to: 'إلى تاريخ'
			},
			new: { action: 'طلب إجازة' },
			show: { header: 'طلب إجازة' },
			vacation: { header: 'طلب إجازة' }
		},
		alerts:
		{
			form: { title: 'العنوان', body: 'المحتوى' },
			new: { action: 'إرسال تنبيه' },
			index: { alerts: 'التنبيهات', empty: "ﻻ يوجد تنبيهات في الوقت حالياً" }
		},
		users:
		{
			form: { username: 'اسم المستخدم', password: 'كلمة المرور', location: 'الموقع' },
			new: { action: 'سجل مستخدم' },
			index: { users: 'المستخدمين', empty: "ﻻ يوجد مستخدمين حالياً" },
			login:
			{
				notice: 'تم تسجيل الدخول', warning: 'اسم المستخدم و/أو كلمة المرور غير صالحة',
				page_title: 'تسجيل الدخول'
			},
			logout: { notice: 'تم تسجيل الخروج' }
		}
	}	
}