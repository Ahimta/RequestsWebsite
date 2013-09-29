require 'spec_helper'

describe LocationsController do
  context 'logged in as admin' do
  	it_behaves_like 'index', Location
  	
  	it_behaves_like 'show', Location
  end
end
