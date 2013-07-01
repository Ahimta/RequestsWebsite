require 'spec_helper'

describe Ticket do
	describe 'associations' do
		subject! { Ticket.new }
		
		it_behaves_like 'request associations'
		
		its(:passport) { should be_nil }
		its(:companions) { should be_empty }
	end
	
	describe 'default values' do
		subject! { Ticket.new }
		
		its(:line) { should be_nil }
		its(:number) { should be_nil }
	end
	
	describe '.has_right?' do
		let!(:applicant) { FactoryGirl.create :applicant }
		context do
			it { Ticket.has_right?(applicant).should be_true }
		end
		
		context do
			let!(:request) { FactoryGirl.create :request, applicant: applicant, accepted: true }
			let!(:ticket) { FactoryGirl.create :ticket, request: request  }
			
			it { Ticket.has_right?(applicant).should be_false }
		end
	end
end
