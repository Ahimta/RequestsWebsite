require 'spec_helper'

describe User do
	describe '.login' do
		let!(:user) { FactoryGirl.create :user, username: 'x', password: 'y' }
		let!(:admin) { FactoryGirl.create :user, username: 'admin', admin: true, password: 'z' }
		
		context 'valid' do
			it { User.login(username: 'x', password: 'y').should == user }
			it { User.login(username: 'X', password: 'y').should == user }
			it { User.login(username: 'admin', password: 'z').should == admin }
			it { User.login(username: 'ADMIN', password: 'z').should == admin }
		end
		
		context 'invalid' do
			it { User.login(username: 'x', password: 'Y').should be_false }
			it { User.login(username: 'x', password: 'z').should be_false }
			it { User.login(username: 'x', password: 'Z').should be_false }
			it { User.login(username: 'admin', password: 'Z').should be_false }
			it { User.login(username: 'admin', password: 'y').should be_false }
			it { User.login(username: 'admin', password: 'Y').should be_false }
		end
	end
	
	describe '.authenticate' do
		let!(:admin) { FactoryGirl.create :user, admin: true }
		let!(:user) { FactoryGirl.create :user }
		let!(:invalid_user) { FactoryGirl.create :user }
		
		let!(:coming) { FactoryGirl.create :coming, request_attributes: { applicant_attributes: { user: user, name: 'x' } } }
		let!(:leave) { FactoryGirl.create :leave, request_attributes: { applicant_attributes: { user: user, name: 'x' } } }
		let!(:ticket) { FactoryGirl.create :ticket, request_attributes: { applicant_attributes: { user: user, name: 'x' } } }
		let!(:vacation) { FactoryGirl.create :vacation, request_attributes: { applicant_attributes: { user: user, name: 'x' } } }
		
		let!(:records) { [coming, ticket, leave, vacation] }
		
		it 'should return true for a valid user' do
			records.each do |record|
				User.authenticate(user, record).should == true
			end
		end
		it 'should return true for admin user' do
			records.each do |record|
				User.authenticate(admin, record).should == true
			end
		end
		it 'should return false for invalid user' do
			records.each do |record|
				User.authenticate(invalid_user, record).should be_false
			end
		end
	end
	
	describe '#username_available?' do
		let!(:records) { FactoryGirl.create_list :user, 3 }
		
		context 'invalid' do
			let!(:invalid) { FactoryGirl.build_list :user, 3 }
			let!(:invalid_upcased) { invalid.each { |e| e.username.upcase } }
			let!(:invalid_downcased) { invalid.each { |e| e.username.downcase } }
			
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
		end
		
		context 'valid' do
			let!(:valid) { FactoryGirl.build :user, username: 'hi' }
			
			it { valid.username_available?.should be_true }
		end
	end
end
