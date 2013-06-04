require 'spec_helper'

describe LocationsController do
	it_behaves_like 'index', Location
	
	it_behaves_like 'show', Location
end
