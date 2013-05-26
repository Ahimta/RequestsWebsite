module ApplicationHelper
	def render_user_field
		"f.hidden_field :user_id, value: 0"
	end
	
	def render_applicant_field
		"f.text_field :applicant, placeholder: t(:applicant), title: t(:applicant), autofocus: ''"
	end
	
	def render_submit_field
		"f.submit action, class: 'btn btn-success btn-large'"
	end
end
