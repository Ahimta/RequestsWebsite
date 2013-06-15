require 'spec_helper'

describe Ticket do
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
