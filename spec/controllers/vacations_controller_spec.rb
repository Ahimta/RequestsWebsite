require 'spec_helper'

describe VacationsController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
  context 'logged in as regular user' do
    describe 'new' do
  		it_behaves_like 'new', Vacation
  		it_behaves_like 'new request', Vacation
  	end
  end
  
  it_behaves_like 'create', Vacation
  	
  it_behaves_like 'edit', Vacation
  	
  it_behaves_like 'update', Vacation
end
