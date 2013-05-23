require 'spec_helper'

describe ComingsController do
	let(:coming) { mock_model Coming, id: 0, applicant: 'X', reason: 'y', user_id: 0 }
	let(:param) { { 'coming' => { 'applicant' => 'X', 'reason' => 'y', 'user_id' => '0' } } }
	
	describe 'new action' do
		before(:each) { get :new }
		after(:each) { get :new }
		
		it 'should call Coming.new' do
			Coming.should_receive(:new)
		end
		it 'should assign @coming' do
			assigns(:coming).should_not == nil
		end
		it 'should render new' do
			response.should render_template :new
		end
	end
	
	describe 'create action' do
		before(:each) do
			Coming.stub(:new).and_return coming
			coming.stub(:save)
		end
		after(:each) { post :create, coming: param }
		
		it 'should call Coming.new' do
			Coming.should_receive(:new).with param
		end
		it 'should call coming.save' do
			coming.should_receive(:save)
		end
		it 'should assign @coming' do
			post :create, coming: param
			assigns(:coming).should_not == nil
		end
		
		context 'fields filled in appropriately' do
			before(:each) do
				coming.stub(:save).and_return true
				post :create, coming: param
			end
			
			it 'should assign flash[:notice]' do
				flash[:notice].should_not == nil
			end
			it 'should redirect to leaves_path' do
				response.should redirect_to requests_path
			end
		end
		
		context 'fields filled in inappropriately' do
			before(:each) do
				coming.stub(:save).and_return false
				post :create, coming: param
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
