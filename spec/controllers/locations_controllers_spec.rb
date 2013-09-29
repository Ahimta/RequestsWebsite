require 'spec_helper'

describe LocationsController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
  context 'logged in as admin' do
  	it_behaves_like 'index', Location
  	
  	it_behaves_like 'show', Location
  end
end
