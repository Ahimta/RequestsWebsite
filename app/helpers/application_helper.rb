module ApplicationHelper
	def get_btn_class(type)
		case type
		when :form, :create, :submit then 'btn btn-success btn-large'
		when :link, :back_normal then 'btn btn-primary'
		when :back then 'btn btn-primary btn-small'
		when :new_request_link, :request_link then 'btn btn-primary btn-large'
		when :destroy, :reject then 'btn btn-danger btn-small'
		when :logout, :destroy_normal then 'btn btn-danger'
		when :login, :edit_normal then 'btn btn-success'
		when :edit, :accept then 'btn btn-success btn-small'
		end
	end
	
	def get_mini_input_class
		'input-mini'
	end
	
	def back_to_requests
		link_to t(:back), requests_path, class: get_btn_class(:back_normal)
	end
	
	def get_login_input_class
		'span2'
	end
	
	def title(title)
		provide :title, title
	end
	
	alias :set_title :title
	
	def my_text_field(f, symbol, text, options={})
		render('/shared/my_text_field', f: f, symbol: symbol, text: text,
			options: options)
	end
	
	def reason_field(f)
		my_text_field f, :reason, t(:reason), required: true
	end
	
	def get_table_class
		'table table-striped'
	end
	
	def get_required_label(required)
		content_tag :span, class: get_required_label_class(required) do
			get_required_field(required)
		end
	end
	
	def get_required_label_class(required)
		if required then 'label label-important'
		else 'label label-success'
		end
	end
	
	def get_required_field(required)
		if required then t(:required_field)
		else t(:optional_field)
		end
	end

	def get_page_dir(locale)
		if locale == :ar then 'rtl'
		else 'ltr'
		end
	end

	def get_locale_link(locale)
		locale = locale == :ar ? :en : :ar
		link_to t(:locale), requests_path(locale: locale), class: get_btn_class(:link)	
	end
end
