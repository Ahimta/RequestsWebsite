require 'spec_helper'

describe VacationsController do
	describe 'new' do
		it_behaves_like 'new', Vacation
		it_behaves_like 'new request', Vacation
	end
	
	it_behaves_like 'create', Vacation
	
	it_behaves_like 'edit', Vacation
	
	it_behaves_like 'update', Vacation
end
