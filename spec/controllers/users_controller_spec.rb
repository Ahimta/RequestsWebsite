require 'spec_helper'

describe UsersController do
	user  = { username: 'X', password: 'y', location: 'z' }
	param = { 'username' => 'X', 'password' => 'y', 'location' => 'z' }
	
	it_behaves_like 'index', :user
	it_behaves_like 'new', User, :user
	it_behaves_like 'create', User, user, param, :user
end
