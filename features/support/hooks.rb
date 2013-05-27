Before '@request_show' do
	steps %Q{
		Given the following applicants exist:
		|	name				|	user_id	|
		|	applicant1	|	0				|
		|	applicant2	|	0				|
		|	applicant3	|	0				|
		And the following requests exist:
		|	applicant_id	|	 accepted	|
		|	1							|	nil				|
		|	2							|	true			|
		|	3							|	false			|
	}
end

Before '@request_index' do
	steps %Q{
		Given the following comings exist:
		|	reason	|	request_id	|
		|	reason1	|	1						|
		|	reason2	|	2						|
		|	reason3	|	3						|
		And the followingg leaves exist:
		|	reason	|	request_id	|
		|	reason1	|	1						|
		|	reason2	|	2						|
		|	reason3	|	3						|
		And the following tickets exist:
		|	line	|	request_id	|
		|	line1	|	1						|
		|	line2	|	2						|
		|	line3	|	3						|
		And the following vacations exist:
		|	request_id			|	duration	|	from	|	to	|
		|	1								|	11				|	12		|	13	|
		|	2								|	21				|	22		|	23	|
		|	3								|	31				|	32		|	33	|
	}
end

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
