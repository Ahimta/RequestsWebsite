require 'spec_helper'

describe User do
	describe '.login' do
		
	end
	
	describe '.authenticate' do
		
	end
	
	describe '#username_available?' do
		let!(:records) { FactoryGirl.create_list :user, 3 }
		let!(:invalid) { FactoryGirl.build_list :user, 3 }
		let!(:invalid_upcased) { invalid.each { |e| e.username.upcase } }
		let!(:invalid_downcased) { invalid.each { |e| e.username.downcase } }
		let!(:valid) { FactoryGirl.build :user, username: 'hi' }
		
		it do
			invalid.each do |e|
				e.username_available?.should == false
			end
		end
		it do
			invalid_upcased.each do |e|
				e.username_available?.should == false
			end
		end
		it do
			invalid_downcased.each do |e|
				e.username_available?.should == false
			end
		end
		it { valid.username_available?.should == true }
	end
end
