module RequestsHelper
	def get_status(status)
		case status
		when nil then t('requests.requests.pending')
		when true then t('requests.requests.accepted')
		when false then t('requests.requests.rejected')
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
		case request.rtype
		when 'coming' then request.coming
		when 'leave' then request.leave
		when 'ticket' then request.ticket
		when 'vacation' then request.vacation
		end
	end
end
