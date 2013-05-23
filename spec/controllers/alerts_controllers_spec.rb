require 'spec_helper'

describe AlertsController do
	let(:alert) { mock_model Alert, id: 0, title: 'X', body: 'y' }
	let(:param) { { 'title' => 'X', 'body' => 'y' } }
	
	describe 'index action' do
		let(:alerts) { [alert, mock_model(Alert, id: 1, title: 'Z', body: 'r') ] }
		
		it 'should call Alert.all' do
			Alert.should_receive(:all).with(no_args).and_return alerts
			get :index
		end
		
		before { get :index }
		
		it { response.should render_template :index }
		it { assigns(:alerts).should_not == nil }
	end
	
	describe 'new action' do
		it 'should call Alert.new' do
			Alert.should_receive(:new).with(no_args)
			get :new
		end
		
		before { get :new }
		
		it 'should render_template new' do
			response.should render_template :new
		end
		it 'should assign @alert' do
			assigns(:alert).should_not == nil
		end
	end
	
	describe 'create action' do
		before do
			Alert.stub(:new).and_return alert
			alert.stub(:save)
		end
		after { post :create, alert: param }
		
		it 'should call Alert.new' do
			Alert.should_receive(:new).with(param).and_return alert
		end
		it 'should call alert.save' do
			alert.should_receive(:save).with(no_args)
		end
		it 'should assign @alert' do
			post :create, alert: param
			assigns(:alert).should == alert
		end
		
		context 'fields filled in appropriately' do
			before do
				alert.stub(:save).and_return true
				post :create, alert: param
			end
			
			it 'should assign flash[:notice]' do
				flash[:notice].should_not == nil
			end
			it 'should redirect_to alerts_path' do
				response.should redirect_to alerts_path
			end
		end
		
		context 'fields filled in inappropriately' do
			before do
				alert.stub(:save).and_return false
				post :create, alert: param
			end
			
			it 'should assign flash[:warning]' do
				flash[:warning].should_not == nil
			end
			it 'should redirect_to alerts_path' do
				response.should render_template :new
			end
		end
	end
end
