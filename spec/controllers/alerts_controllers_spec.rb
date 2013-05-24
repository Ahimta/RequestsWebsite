require 'spec_helper'

describe AlertsController do
	describe 'index action' do
		let(:alerts) { [stub_model(Alert, id: 0, title: 'X', body: 'y'),
			stub_model(Alert, id: 1, title: 'Z', body: 'r')] }
		
		it 'should call Alert.all' do
			Alert.should_receive(:all).with(no_args).and_return alerts
			get :index
		end
		
		it_behaves_like 'index', :alerts
	end
	
	alert = { id: 0, title: 'X', body: 'y' }
	param = { 'title' => 'X', 'body' => 'y' }
	
	it_behaves_like 'new', Alert, :alert
	it_behaves_like 'create', Alert, alert, param, :alert, '/alerts?locale=en'
end
