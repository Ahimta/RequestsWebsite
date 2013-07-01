require 'spec_helper'

describe Coming do
	it_behaves_like 'request associations'
	
	describe 'default values' do
		subject! { Coming.new }
		
		its(:reason) { should be_nil }
	end
end
