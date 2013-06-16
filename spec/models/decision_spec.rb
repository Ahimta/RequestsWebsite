require 'spec_helper'

describe Decision do
	describe 'associations' do
		subject! { Decision.new }
		
		its(:request) { should be_nil }
	end
	
	describe 'default values' do
		subject! { Decision.new }
		
		its(:number) { should be_nil }
	end
end
