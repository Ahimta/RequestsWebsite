require 'spec_helper'

describe UsersController do
  context 'logged in as admin' do
  	it_behaves_like 'index', User
  	
  	it_behaves_like 'new', User
  	
  	it_behaves_like 'create', User, '/users?locale=en'
  	
  	it_behaves_like 'edit', User
  	
  	it_behaves_like 'update', User, '/users?locale=en'
  	
  	it_behaves_like 'destroy', User, true, '/users?locale=en'
  end
	
	context 'not logged in' do
  	describe 'login' do
  	  let!(:user) { FactoryGirl.create :user, username: 'u', password: 'p'}
  		
  		it 'should call User.where' do
  		  User.stub(:login)
  			User.should_receive(:login).with('x')
  			post :login, login: 'x'
  		end
  		
  		context 'valid inputs' do
    		it 'should redirect_to requests_path' do
    			post :login, login: { username: 'u', password: 'p' }
    			response.should redirect_to requests_path
    		end
      end
      
      context 'invalid inputs' do
        it 'should redirect_to home_page_path' do
          post :login, login: { username: 'p', password: 'u' }
          response.should redirect_to home_page_path
        end
      end
  	end
  end
end
