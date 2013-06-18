# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	ar:
	{
		applicant: 'المستفيد', request: 'طلب', coming: 'مباشرة',
		leave: 'مغادرة', destroy: 'حذف', edit: 'تعديل', ticket: 'تذاكر',
		vacation: 'إجازة', name: 'الاسم',type: 'النوع', modify: 'تعديل',
		location: 'الموقع', requests_count: 'عدد الطلبات', user: 'المستخدم',
		applicants_count: 'عدد المستفيدين', applicant_name: 'اسم المستفيد',
		users_count: 'عدد المستخدمين', status: 'الحالة', back: 'عودة',
		reason: 'السبب', passport: 'صورة الجواز', reason: 'السبب',
		applicants:
		{
			form: { name: 'الاسم' },
			show: { header: 'عرض مستفيد' }
		},
		create:
		{
			notice: 'تم إرسال طلبك بنجاح',
			warning: 'الرجاء تعبئة جميع الحقول'
		},
		layouts:
		{
			application:
			{
				alerts: 'التنبيهات', locale: 'English', locations: 'المواقع',
				login: 'تسجيل دخول', logout: 'تسجيل خروج', page_title: 'خدمة العطل و الإجازات',
				password: 'كلمة المرور', requests: 'الطلبات', username: 'اسم المستخدم',
				users: 'المستخدمين', applicants: 'المستفيدين'
			}
		},
		locations:
		{
			form: { name: 'الموقع' },
			index: { locations: 'المواقع' },
			locations: { empty: "ﻻ يوجد مواقع في الوقت الحالي" },
			show:
			{
				empty: "ﻻ يوجد مستخدمين في هذا الموقع", header: 'بيانات الموقع'
			},
		},
		requests:
		{
			index: { requests: 'الطلبات' },
			requests:
			{
				accept: 'قبول', accepted: 'تم القبول', decide: 'قبول/رفض',
				empty: "لم تقم بتقديم أي طلب حتى الآن", reject: 'رفض',
				pending: 'جاري', rejected: 'تم الرفض'
			}
		},
		leaves:
		{
			edit: { action: 'تعديل طلب مغادرة' },
			form: { reason: 'السبب' },
			leave: { header: 'طلب مغادرة' },
			new: { action: 'طلب مغادرة' }
		},
		comings:
		{
			coming: { header: 'طلب مباشرة' },
			edit: { action: 'تعديل طلب مباشرة' },
			form: { reason: 'السبب' },
			new: { action: 'طلب مباشرة' }
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
			create: { warning: 'يجب أن ﻻ تقل المدة بين طلبات التذاكر عن 11 شهراً' },
			edit: { action: 'تعديل طلب تذاكر' },
			form: { line: 'خط السير', number: 'رقم الحجز إن وجد' },
			new: { action: 'طلب مغادرة' },
			show: { header: 'طلب مغادرة' },
			ticket: { header: 'طلب تذاكر' }
		},
		vacations:
		{
			edit: { action: 'تعديل طلب إجازة' },
			form: { duration: 'عدد الأيام', from: 'من تاريخ', to: 'إلى تاريخ' },
			new: { action: 'طلب إجازة' },
			show: { header: 'طلب إجازة' },
			vacation: { header: 'طلب إجازة' }
		},
		alerts:
		{
			alerts: { empty: "ﻻ يوجد تنبيهات في الوقت الحالي" },
			edit: { action: 'تعديل تنبيه' },
			form: { title: 'العنوان', body: 'المحتوى' },
			index: { alerts: 'التنبيهات' },
			new: { action: 'إرسال تنبيه' },
			show: { header: 'تنبيه' }
		},
		applicants:
		{
			applicants: { empty: "ﻻ يوجد مستفيدين في الوقت الحالي." },
			index: { applicants: 'المستفيدين' },
			form: { name: 'الاسم' },
			show: { header: 'بيانات المستفيد' }
		},
		users:
		{
			form: { username: 'اسم المستخدم', password: 'كلمة المرور' },
			new: { action: 'تسجيل مستخدم' },
			create: { notice: 'تم تعديل المستخدم بنجاح' },
			edit: { action: 'تعديل مستخدم' },
			users: { empty: "ﻻ يوجد مستخدمين في الموقت الحالي" },
			index: { users: 'المستخدمين' },
			login: { notice: 'تم تسجيل الدخول', warning: 'اسم المستخدم أو/و كلمة المرور غير صالحة' },
			logout: { notice: 'تم تسجيل الدخول' },
			show: { header: 'المستفيدين' }
		},
		decisions:
		{
			decision:
			{
				acceptance: 'applicant منح type بقرار رقم number.'
			},
			form: { number: 'رقم القرار' },
			new: { action: 'إصدار موافقة' },
			show: { header: 'موافقة' }
		}
	}	
}