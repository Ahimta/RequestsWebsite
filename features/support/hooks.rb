Before '@login_logout' do
	steps %Q{
		Given the following locations exist:
		|	name			|
		|	location1	|
		|	location2	|
		And the following users exist:
		|	username	|	password	|	location_id	|
		|	username1	|	password1	|	1						|
		|	username2	|	password2	|	2						|
	}
end
