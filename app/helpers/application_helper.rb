module ApplicationHelper
	def render_submit_field
		"f.submit action, class: 'btn btn-success btn-large'"
	end
	
	def get_btn_class(type)
		case type
		when :form, :create then 'btn btn-success btn-large'
		when :link then 'btn btn-primary'
		when :new_request_link then 'btn btn-primary btn-large'
		when :destroy, :reject then 'btn btn-danger btn-small'
		when :edit, :accept then 'btn btn-success btn-small'
		end
	end
	
	def get_mini_input_class
		'input-mini'
	end
end
