require 'spec_helper'

describe ComingsController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
  context 'logged in as admin' do
    describe 'new' do
  		it_behaves_like 'new', Coming
  		it_behaves_like 'new request', Coming
  	end
    
  	
  	it_behaves_like 'create', Coming
  	
  	it_behaves_like 'edit', Coming
  	
  	it_behaves_like 'update', Coming
  end
end
