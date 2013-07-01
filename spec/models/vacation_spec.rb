require 'spec_helper'

describe Vacation do
	describe 'associations' do
		subject! { Vacation.new }
		
		it_behaves_like 'request associations'
		
		its(:passport) { should be_nil }
	end
	
	describe 'default values' do
		subject! { Vacation.new }
		
		its(:duration) { should be_nil }
		its(:from) { should be_nil }
		its(:to) { should be_nil }
	end
end
