require 'spec_helper'

describe LeavesController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
  context 'logged in as regular user' do
    describe 'new' do
  		it_behaves_like 'new', Leave
  		it_behaves_like 'new request', Leave
  	end
    
  	
  	it_behaves_like 'create', Leave
  	
  	it_behaves_like 'edit', Leave
  	
  	it_behaves_like 'update', Leave
  end
end
