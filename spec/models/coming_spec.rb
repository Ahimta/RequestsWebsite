require 'spec_helper'

describe Coming do
	describe 'associations' do
		subject! { Coming.new }
		
		its(:applicant) { should be_nil }
		its(:request) { should be_nil }
		its(:user) { should be_nil }
	end
	
	describe 'default values' do
		subject! { Coming.new }
		
		its(:reason) { should be_nil }
		its(:request_id) { should be_nil }
	end
end
