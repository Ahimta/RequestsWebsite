require 'spec_helper'

describe ComingsController do
	coming = { id: 0, applicant: 'X', reason: 'y', user_id: 0 }
	param = { 'coming' => { 'applicant' => 'X', 'reason' => 'y',
		'user_id' => '0' } }
	
	it_behaves_like 'show', Coming, coming, :coming
	
	it_behaves_like 'new', Coming, :coming
	
	it_behaves_like 'create', Coming, coming, param, :coming
end
