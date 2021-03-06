When(/^I change the locale to (\w+)/) do |locale|
	case locale
	when 'english'
		locale, link = 'ar', 'English'
	when 'arabic'
		locale, link = 'en', 'Arabic'
	end
	
	visit home_page_path(locale: locale)
	click_link link
end
