require 'spec_helper'

describe Leave do
	it_behaves_like 'request associations'
	
	describe 'default values' do
		subject! { Leave.new }
		
		its(:reason) { should be_nil }
	end
end
