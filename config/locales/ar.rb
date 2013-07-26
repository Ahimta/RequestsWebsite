# Sample localization file for English. Add more files in this directory for other locales.
# See https://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.

{
	ar:
	{
		activerecord:
		{
			attributes:
			{
				alert: { title: 'العنوان', body: 'المحتوى' },
				applicant: { name: 'المستفيد' },
				coming: { reason: 'السبب' },
				companion: { birthdate: 'تاريخ الميلاد', name: 'الاسم', relation: 'صلة القرابة' },
				decision: { number: 'رقم القرار' },
				leave: { reason: 'السبب' },
				location: { name: 'الموقع' },
				passport: { picture: 'صورة الجواز' },
				request: { accepted: 'موافق عليه' },
				ticket: { line: 'خط السير', number: 'رقم الحجز' },
				user: {  admin: 'مسؤول', password_digest: 'كلمة المرور', username: 'اسم المستخدم' },
				vacation: { duration: 'عدد الأيام', from: 'من تاريخ', to: 'إلى تاريخ' }
			},
			models:
			{
				alert: 'تنبيه', applicant: 'مستفيد', coming: 'مباشرة', companion: 'مرافق',
				decision: 'موافقة', leave: 'مغادرة', location: 'موقع',
				passport: 'صورة جواز', request: 'طلب', ticket: 'تذاكر',
				user: 'مستخدم', vacation: 'إجازة'
			}
		},
		applicant: 'المستفيد', request: 'طلب', coming: 'مباشرة',
		leave: 'مغادرة', destroy: 'حذف', edit: 'تعديل', ticket: 'تذاكر',
		vacation: 'إجازة', name: 'الاسم', type: 'النوع', modify: 'تعديل',
		location: 'الموقع', requests_count: 'عدد الطلبات', user: 'المستخدم',
		applicants_count: 'عدد المستفيدين', applicant_name: 'اسم المستفيد',
		users_count: 'عدد المستخدمين', status: 'الحالة', back: 'عودة', body: 'المحتوى',
		passport: 'صورة الجواز', reason: 'السبب', relation: 'صلة القرابة',
		birthdate: 'تاريخ الميلاد', notice: 'تم إرسال طلبك بنجاح',
		warning: 'الرجاء ملء الحقول المطلوبة', locale: 'English', res_number: 'رقم الحجز',
		duration: 'عدد الأيام', decision_number: 'رقم القرار', title: 'العنوان',
		username: 'اسم المستخدم', from: 'من تاريخ', to: 'إلى تاريخ', reject: 'رفض',
		password: 'كلمة المرور', accept: 'قبول', accepted: 'تم القبول',
		decide: 'قبول/رفض', pending: 'جاري', rejected: 'تم الرفض',
		new_acceptance: 'إصدار موافقة', login: 'تسجيل دخول', logout: 'تسجيل خروج',
		show_applicant: 'بيانات المستفيد', show_location: 'بيانات الموقع',
		edit_leave: 'تعديل طلب مغادرة', edit_coming: 'تعديل طلب المباشرة',
		new_coming: 'طلب مباشرة', new_user: 'تسجيل مستخدم',
		edit_ticket: 'تعديل طلب تذاكر', new_ticket: 'طلب تذاكر',
		new_decision: 'إصدار موافقة', show_acceptance: 'موافقة',
		show_user: 'بيانات المستخدم', show_alert: 'تنبيه', new_alert: 'إرسال تنبيه',
		edit_alert: 'تعديل تنبيه', show_ticket: 'طلب تذاكر',
		show_vacation: 'طلب إجازة', edit_user: 'تعديل مستخدم',
		new_vacation: 'طلب إجازة', edit_vacation: 'تعديل طلب إجازة',
		new_leave: 'طلب مغادرة', edit_leave: 'تعديل طلب مغادرة',
		page_title: 'خدمة العطل', line: 'خط السير',
		empty_locations: "ﻻ يوجد مواقع في الوقت الحالي",
		empty_requests: "ﻻ يوجد طلبات في الوقت الحالي",
		empty_alerts: "ﻻ يوجد تنبيهات في الوقت الحالي",
		empty_applicants: "ﻻ يوجد مستفيدين في الوقت الحالي",
		empty_users: "ﻻ يوجد مستخدمين في الوقت الحالي",
		acceptance: 'تم منح applicant type بقرار رقم number..',
		taken_username: 'Username is taken',
		create_user_notice: 'تم تسجيل المستخدم بنجاح',
		login_notice: 'تم تسجيل الدخول بنجاح', login_warning: 'اسم المستخد أو كلمة المرور غير صالحين',
		logout_notice: 'تم تسجيل الخروج بنجاح',
		alerts: 'التنبيهات', applicants: 'المستفيدين', locations: 'المواقع',
		requests: 'الطلبات', users: 'المستخدمين', companions: 'المرافقون',
		create_ticket_warning: 'ﻻ يمكن تقديم أكثر من طلب تذاكر واحد في فترة 11 شهر',
		create_notice: 'تم إرسال طلبك بنجاح',
		create_warning: 'الرجاء ملء جميع الحقول المطلوبة',
		create_alert_notice: 'تم إرسال التنبيه بنجاح',
		update_alert_notice: 'تم تعديل التنبيه بنجاح',
		update_notice: 'تم تعديل طلبك بنجاح',
		update_user_notice: 'تم تحديث بيانات المستخدم بنجاح',
		show_coming: 'طلب مباشرة', show_leave: 'طلب مغادرة', na: 'ﻻ يوجد',
		show_decision: 'موافقة', required_field: 'إجباري', optional_field: 'اختياري',
		new_request: 'طلب جديد',
		number: { human: { storage_units: { format: '' } } }
	}
}
