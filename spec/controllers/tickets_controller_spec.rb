require 'spec_helper'

describe TicketsController do
	let(:ticket) { mock_model Ticket, id: 0, applicant: 'X', line: 'y', user_id: 0 }
	let(:param) { { 'ticket' => { 'applicant' => 'X', 'line' => 'y', 'user_id' => '0' } } }
	
	describe 'new action' do
		before(:each) { get :new }
		
		it 'should call Ticket.new' do
			Ticket.should_receive(:new)
			get :new
		end
		it 'should assign @ticket' do
			assigns(:ticket).should_not == nil
		end
		it 'should render new' do
			response.should render_template :new
		end
	end
	
	describe 'create action' do
		before(:each) do
			Ticket.stub(:new).and_return ticket
			ticket.stub(:save)
		end
		after(:each) { post :create, ticket: param }
		
		it 'should call Ticket.new' do
			Ticket.should_receive(:new).with(param).and_return ticket
		end
		it 'should call ticket.save' do
			ticket.should_receive :save
		end
		it 'should assign @ticket' do
			post :create, ticket: param
			assigns(:ticket).should == ticket
		end
		
		context 'fields filled in appropriately' do
			before(:each) do
				ticket.stub(:save).and_return true
				post :create, ticket: param
			end
			it 'should redirect to tickets_path' do
				response.should redirect_to tickets_path
			end
			it 'should assign flash[:notice]' do
				flash[:notice].should_not == nil
			end
		end
		context 'fields filled in inappropriately' do
			before(:each) do
				ticket.stub(:save).and_return false
				post :create, ticket: param
			end
			it 'should render new' do
				response.should render_template :new
			end
			it 'should assign flash[:warning]' do
				flash[:warning].should_not == nil
			end
		end
	end
end
