require 'spec_helper'

describe VacationsController do
	vacation = { id: 0, applicant: 'X', duration: 1, from: '2', to: '3',
		user_id: 0 }
	param = { 'vacation' => { 'applicant' => 'X', 'duration' => '1',
		'from' => '2', 'to' => '3','user_id' => '0' } }
	
	
	it_behaves_like 'show', Vacation, vacation, :vacation
	
	it_behaves_like 'new', Vacation, :vacation
	
	it_behaves_like 'create', Vacation, vacation, param, :vacation
end
