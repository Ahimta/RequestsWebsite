require 'spec_helper'

describe RequestsController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
    
    
	it_behaves_like 'index', Request
	
	it_behaves_like 'show', Request
	
	it_behaves_like 'destroy', Request
end
