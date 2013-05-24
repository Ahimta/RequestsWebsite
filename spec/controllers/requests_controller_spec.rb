require 'spec_helper'

describe RequestsController do
	describe 'index action' do
		let(:comings) { [
				mock_model(Coming, applicant: 'capplicant1', reason: 'creason1', user_id: 0),
				mock_model(Coming, applicant: 'capplicant2', reason: 'creason2', user_id: 0)
			] }
		let(:leaves) { [
				mock_model(Leave, applicant: 'lapplicant1', reason: 'lreason1', user_id: 0),
				mock_model(Leave, applicant: 'lapplicant2', reason: 'lreason2', user_id: 0)
			] }
		let(:tickets) { [
				mock_model(Ticket, applicant: 'tapplicant1', line: 'line1', user_id: 0),
				mock_model(Ticket, applicant: 'tapplicant2', line: 'line2', user_id: 0)
			] }
		let(:vacations) { [
				mock_model(Vacation, applicant: 'vapplicant1', duration: '11', from: '12', to: '13', user_id: 0),
				mock_model(Vacation, applicant: 'vapplicant2', duration: '21', from: '22', to: '23', user_id: 0)
			] }
		
		it_behaves_like 'index'
		
		after { get :index }
		
		it 'should call Coming.all' do
			Coming.should_receive(:all).with(no_args).and_return comings
		end
		it 'should call Leave.all' do
			Leave.should_receive(:all).with(no_args).and_return leaves
		end
		it 'should call Ticket.all' do
			Ticket.should_receive(:all).with(no_args).and_return tickets
		end
		it 'should call Vacation.all' do
			Vacation.should_receive(:all).with(no_args).and_return vacations
		end
	end
end
