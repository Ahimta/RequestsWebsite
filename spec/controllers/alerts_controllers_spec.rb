require 'spec_helper'

describe AlertsController do
	it_behaves_like 'index', Alert
	
	it_behaves_like 'show', Alert
	
	it_behaves_like 'new', Alert
	
	it_behaves_like 'create', Alert, '/alerts?locale=en'
	
	it_behaves_like 'edit', Alert
	
	it_behaves_like 'update', Alert, '/alerts?locale=en'
	
	it_behaves_like 'destroy', Alert, '/alerts?locale=en'
end
