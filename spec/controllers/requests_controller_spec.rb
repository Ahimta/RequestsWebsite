require 'spec_helper'

describe RequestsController do
	it_behaves_like 'index', Request
	
	it_behaves_like 'show', Request
end
