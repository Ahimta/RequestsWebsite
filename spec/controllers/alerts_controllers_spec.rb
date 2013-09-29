require 'spec_helper'

describe AlertsController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
  context 'logged in as regular user' do
  	it_behaves_like 'index', Alert, false
  	
  	it_behaves_like 'show', Alert, false
  end
	
	context 'logged in as admin' do
    it_behaves_like 'new', Alert
  	
  	it_behaves_like 'create', Alert, '/alerts?locale=en'
  	
  	it_behaves_like 'edit', Alert, false
  	
  	it_behaves_like 'update', Alert, '/alerts?locale=en', false
  	
  	it_behaves_like 'destroy', Alert, false, '/alerts?locale=en'
  end
end
