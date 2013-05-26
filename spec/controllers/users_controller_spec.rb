require 'spec_helper'

describe UsersController do
	user  = { username: 'X', password: 'y', location: 'z' }
	param = { 'username' => 'X', 'password' => 'y', 'location' => 'z' }
	
	
	it_behaves_like 'index', User
	
	it_behaves_like 'new', User
	
	it_behaves_like 'create', User, user, param, :user
end
