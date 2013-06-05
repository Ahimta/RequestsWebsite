module ApplicationHelper
	def get_btn_class(type)
		case type
		when :form, :create, :submit then 'btn btn-success btn-large'
		when :link then 'btn btn-primary'
		when :new_request_link, :request_link then 'btn btn-primary btn-large'
		when :destroy, :reject then 'btn btn-danger btn-small'
		when :edit, :accept then 'btn btn-success btn-small'
		end
	end
	
	def get_mini_input_class
		'input-mini'
	end
	
	def back_to_requests
		"link_to t('requests.back'), requests_path, class: 'btn btn-primary btn-small'"
	end
end
