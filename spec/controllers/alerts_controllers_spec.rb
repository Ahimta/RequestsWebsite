require 'spec_helper'

describe AlertsController do
	it_behaves_like 'index', Alert
	
	it_behaves_like 'new', Alert
	
	it_behaves_like 'create', Alert, '/alerts?locale=en'
end
