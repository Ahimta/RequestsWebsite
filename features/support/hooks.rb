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
