require 'spec_helper'

describe LeavesController do
	leave = { id: 0, applicant: 'X', reason: 'y', user_id: 0 }
	param = { 'leave' => { 'applicant' => 'X', 'reason' => 'y', 'user_id' => '0' } }
	
	
	it_behaves_like 'new', Leave, :leave
	
	it_behaves_like 'create', Leave, leave, param, :leave
end
