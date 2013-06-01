require 'spec_helper'

describe LeavesController do
	it_behaves_like 'new', Leave
	
	it_behaves_like 'create', Leave
end
