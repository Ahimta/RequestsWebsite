module RequestsHelper
	def get_status(status)
		case status
		when nil then t(:pending)
		when true then t(:accepted)
		when false then t(:rejected)
		end
	end
	
	def get_row_class(status)
		case status
		when nil then 'warning'
		when true then 'success'
		when false then 'error'
		end
	end
	
	def get_label_class(status)
		case status
		when nil then 'label label-warning'
		when true then 'label label-success'
		when false then 'label label-important'
		end
	end
	
	def get_decision_cell(request)
		if request.decision
			link_to(t(:accepted),
				request_decision_path(request, request.decision))
		else
			get_status(request.accepted)
		end
	end
	
	def get_requests_table(admin)
		columns   = []
		columns << t(:user) if admin
		columns.push(t(:applicant), t(:type), t(:status))
		columns << t(:decide) if admin
		
		cells = ['link_to i, item']
		cells << 'link_to item.user_username, item.user' if admin
		cells.push('link_to item.applicant_name, item.applicant',
		't(item.requestable_type.downcase.to_sym)', 'get_decision_cell(item)')
		cells << "render('/requests/requests_btn_group', request: item)" if admin
		
		[cells, columns]
	end
end
