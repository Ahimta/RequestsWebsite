require 'spec_helper'

describe Vacation do
	describe 'associations' do
		subject! { Vacation.new }
		
		its(:applicant) { should be_nil }
		its(:passport) { should be_nil }
		its(:request) { should be_nil }
		its(:user) { should be_nil }
	end
	
	describe 'default values' do
		subject! { Vacation.new }
		
		its(:duration) { should be_nil }
		its(:from) { should be_nil }
		its(:to) { should be_nil }
		its(:request_id) { should be_nil }
	end
end
