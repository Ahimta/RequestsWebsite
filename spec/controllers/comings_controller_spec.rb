require 'spec_helper'

describe ComingsController do
	it_behaves_like 'new', Coming
	
	it_behaves_like 'create', Coming
end
