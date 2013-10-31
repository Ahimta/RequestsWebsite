Before '@login_logout' do
	step '2 users exist'
end

Before '@admin' do
	steps %Q{
		Given an admin user exists
		When I login:
  		|	login_username	|	admin	|
  		|	login_password	|	admin	|
	}
end

Before '@regular_user' do
	steps %Q{
		Given 1 user exists
		When I login:
  		|	login_username	|	username1	|
  		|	login_password	|	password1	|
	}
end
