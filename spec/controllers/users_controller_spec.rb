require 'spec_helper'

describe UsersController do
	user  = { username: 'x', password: 'y', location: 'z' }
	param = { 'username' => 'x', 'password' => 'y', 'location' => 'z' }
	
	
	it_behaves_like 'index', User
	
	it_behaves_like 'new', User
	
	it_behaves_like 'create', User, user, param, :user
	
	describe 'login' do
		let!(:arr) { [user] }
		
		before do
			User.stub(:where).and_return arr
			arr.stub(:first).and_return user
			user.stub(:authenticate)
		end
		after do
			post :login, login: param
		end
		
		it 'should call User.where' do
			User.should_receive(:where).with('lower(username) = ?', 'x').and_return arr
		end
		it 'should call user.first' do
			arr.should_receive(:first).with(no_args).and_return user
		end
		it 'should call user.authenticate' do
			user.should_receive(:authenticate).with 'y'
		end
		it 'should redirect_to requests_path' do
			post :login, login: param
			response.should redirect_to requests_path
		end
	end
end
