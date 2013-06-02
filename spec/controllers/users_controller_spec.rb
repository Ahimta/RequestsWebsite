require 'spec_helper'

describe UsersController do
	user  = { username: 'x', password: 'y', location: 'z' }
	param = { 'username' => 'x', 'password' => 'y', 'location' => 'z' }
	
	
	it_behaves_like 'index', User
	
	it_behaves_like 'new', User
	
	it_behaves_like 'create', User, '/users?locale=en'
	
	it_behaves_like 'edit', User
	
	it_behaves_like 'update', User, '/users?locale=en'
	
	it_behaves_like 'destroy', User, '/users?locale=en'
	
	describe 'login' do
		before do
			User.stub(:login)
		end
		
		it 'should call User.where' do
			User.should_receive(:login).with('x')
			post :login, login: 'x'
		end
		it 'should redirect_to requests_path' do
			post :login, login: 'x'
			response.should redirect_to requests_path
		end
	end
end
