require 'spec_helper'

describe LeavesController do
	let(:leave) { mock_model Leave, id: 0, applicant: 'X', reason: 'y', user_id: 0 }
	let(:param) { { 'leave' => { 'applicant' => 'X', 'reason' => 'y', 'user_id' => '0' } } }
	
	describe 'new action' do
		before(:each) { get :new }
		after(:each) { get :new }
		
		it 'should call Leave.new' do
			Leave.should_receive(:new)
		end
		it 'should assign @leave' do
			assigns(:leave).should_not == nil
		end
		it 'should render new' do
			response.should render_template :new
		end
	end
	
	describe 'create action' do
		before(:each) do
			Leave.stub(:new).and_return leave
			leave.stub(:save)
		end
		after(:each) { post :create, leave: param }
		
		it 'should call Leave.new' do
			Leave.should_receive(:new).with param
		end
		it 'should call leave.save' do
			leave.should_receive(:save)
		end
		it 'should assign @leave' do
			post :create, leave: param
			assigns(:leave).should_not == nil
		end
		
		context 'fields filled in appropriately' do
			before(:each) do
				leave.stub(:save).and_return true
				post :create, leave: param
			end
			
			it 'should assign flash[:notice]' do
				flash[:notice].should_not == nil
			end
			it 'should redirect to leaves_path' do
				response.should redirect_to leaves_path
			end
		end
		
		context 'fields filled in inappropriately' do
			before(:each) do
				leave.stub(:save).and_return false
				post :create, leave: param
			end
			
			it 'should assign flash[:warning]' do
				flash[:warning].should_not == nil
			end
			it 'should render new' do
				response.should render_template :new
			end
		end
	end
end
