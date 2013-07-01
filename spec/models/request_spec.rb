require 'spec_helper'

describe Request do
	describe 'associations' do
		subject! { Request.new }
		
		its(:applicant) { should be_nil }
		its(:decision) { should be_nil }
		its(:requestable) { should be_nil }
		its(:user) { should be_nil }
	end
	
	describe 'default values' do
		subject! { Request.new }
		
		its(:accepted) { should be_nil }
		its(:applicant_id) { should be_nil }
	end
	
	describe '.build_associations' do
		let!(:coming) { Coming.new }
		let!(:leave) { Leave.new }
		let!(:ticket) { Ticket.new }
		let!(:vacation) { Vacation.new }
		
		let!(:built_coming) { request = request = coming.build_request; request.build_applicant; coming }
		let!(:built_leave) { request = leave.build_request; request.build_applicant; leave }
		let!(:built_ticket) { request = ticket.build_request; request.build_applicant; ticket }
		let!(:built_vacation) { request = vacation.build_request; request.build_applicant; vacation }
		
		context 'all request records' do
			let!(:records) { [coming, leave, ticket, vacation] }
			let!(:built_records) { [built_coming, built_leave, built_ticket, built_vacation] }
			let!(:pairs) { records.zip built_records }
			
			it do
				pairs.each { |e| Request.build_associations(e.first).should == e.last }
			end
		end
		
		context 'ticket' do
			let!(:proper_ticket) { built_ticket.build_passport; 3.times { built_ticket.companions.build }; built_ticket }
			
			it do
				Request.build_associations(ticket, passportable: true, companions: true).should == proper_ticket
			end
		end
		
		context 'ticket' do
			let!(:proper_vacation) { built_vacation.build_passport; built_vacation }
			
			it do
				Request.build_associations(vacation, passportable: true).should == proper_vacation
			end
		end
	end
end
