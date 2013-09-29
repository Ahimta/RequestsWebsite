require 'spec_helper'

describe ComingsController do
  context 'logged in as regular user' do
  	describe 'new' do
  		it_behaves_like 'new', Coming
  		it_behaves_like 'new request', Coming
  	end
  	
  	it_behaves_like 'create', Coming
  	
  	it_behaves_like 'edit', Coming
  	
  	it_behaves_like 'update', Coming
  end
end
