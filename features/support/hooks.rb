Before('@admin') { step 'I am logged in as admin' }

Before('@regular_user') { step 'I am logged in as regular user' }

Before '@first_user' do
	steps %Q{
		Given 1 user exists
		When I login
			|	login_username	|	username1	|
			|	login_password	|	password1	|
	}
end

Before('@visitor') { step 'I am logged in as not' }
