require 'spec_helper'

describe Alert do
	describe 'default values' do
		subject! { Alert.new }
		
		its(:body) { should be_nil }
		its(:title) { should be_nil }
	end
end
