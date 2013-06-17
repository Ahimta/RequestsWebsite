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
		link_to t(:back), requests_path, class: 'btn btn-primary'
	end
	
	def get_login_input_class
		'span2'
	end
	
	def set_title(title)
		provide :title, title
	end
	
	def title(title)
		provide :title, title
	end
end
