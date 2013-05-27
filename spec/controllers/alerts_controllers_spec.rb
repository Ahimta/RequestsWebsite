require 'spec_helper'

describe AlertsController do
	alert = { id: 0, title: 'X', body: 'y' }
	param = { 'title' => 'X', 'body' => 'y' }
	
	
	it_behaves_like 'index', Alert
	
	it_behaves_like 'new', Alert, :alert
	
	it_behaves_like 'create', Alert, alert, param, :alert, '/alerts?locale=en'
end
