require 'spec_helper'

describe TicketsController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
  context 'logged in as regular user' do
    
  	describe 'new' do
  		it_behaves_like 'new', Ticket
  		it_behaves_like 'new request', Ticket
  	end
    
  	
  	it_behaves_like 'create', Ticket
  	
  	it_behaves_like 'edit', Ticket
  	
  	it_behaves_like 'update', Ticket
  end
end
