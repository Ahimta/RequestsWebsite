module RequestsHelper
	def get_status(status)
		case status
		when nil then t('requests.index.pending')
		when true then t('requests.index.accepted')
		when false then t('requests.index.rejected')
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
	
	def get_request(request)
		request.coming or request.leave or request.ticket or request.vacation
	end
	
	def back_to_requests
		"link_to t('requests.back'), requests_path, class: 'btn btn-primary btn-small'"
	end
end
