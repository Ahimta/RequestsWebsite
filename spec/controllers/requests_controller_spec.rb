require 'spec_helper'

describe RequestsController do
	request = 'x'
	
	
	it_behaves_like 'index', Request
	
	it_behaves_like 'show', Request, request
end
