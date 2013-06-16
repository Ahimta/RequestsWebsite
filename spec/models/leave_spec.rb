require 'spec_helper'

describe Leave do
	describe 'associations' do
		subject! { Leave.new }
		
		its(:applicant) { should be_nil }
		its(:request) { should be_nil }
		its(:user) { should be_nil }
	end
	
	describe 'default values' do
		subject! { Leave.new }
		
		its(:reason) { should be_nil }
		its(:request_id) { should be_nil }
	end
end
