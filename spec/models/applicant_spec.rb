require 'spec_helper'

describe Applicant do
	describe 'associations' do
		subject! { Applicant.new }
		
		its(:location) { should be_nil }
		its(:user) { should be_nil }
		
		its(:requests) { should be_empty }
		its(:tickets) { should be_empty }
	end
	
	describe 'default values' do
		subject! { Applicant.new }
		
		its(:name) { should be_nil }
		its(:user_id) { should be_nil }
	end
end
