module ApplicationHelper
	def get_btn_class(type)
		case type
		when :form, :create, :submit then 'btn btn-success btn-large'
		when :link then 'btn btn-primary'
		when :back then 'btn btn-primary btn-small'
		when :new_request_link, :request_link then 'btn btn-primary btn-large'
		when :destroy, :reject then 'btn btn-danger btn-small'
		when :logout then 'btn btn-danger'
		when :login then 'btn btn-success'
		when :edit, :accept then 'btn btn-success btn-small'
		end
	end
	
	def get_mini_input_class
		'input-mini'
	end
	
	def back_to_requests
		"link_to t(:back), requests_path, class: 'btn btn-primary btn-small'"
	end
	
	def get_login_input_class
		'span2'
	end
end
