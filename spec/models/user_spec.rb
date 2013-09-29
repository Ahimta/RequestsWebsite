require 'spec_helper'

describe User do
	describe 'associations' do
		subject! { User.new }
		
		its(:location) { should be_nil }
		its(:applicants) { should be_empty }
		its(:requests) { should be_empty }
	end
	
	describe 'default values' do
		subject! { User.new }
		
		its(:admin) { should be_nil }
		its(:location_id) { should be_nil }
		its(:password) { should be_nil }
		its(:username) { should be_nil }
	end
	
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
		let!(:admin) { FactoryGirl.create :user, username: 'admin', admin: true }
		let!(:user) { FactoryGirl.create :user, username: 'john' }
		let!(:invalid_user) { FactoryGirl.create :user, username: 'smith' }
		
		let!(:coming) { Coming.create! reason: 'reason', request_attributes: { applicant_attributes: { user_id: user.id, name: 'x' } } }
		let!(:leave) { Leave.create! reason: 'reason', request_attributes: { applicant_attributes: { user_id: user.id, name: 'x' } } }
		let!(:ticket) { Ticket.create line: 'line', request_attributes: { applicant_attributes: { user_id: user.id, name: 'x' } } }
		let!(:vacation) { Vacation.create duration: '1', from: '2', to: '3', request_attributes: { applicant_attributes: { user_id: user.id, name: 'x' } } }
		
		let!(:records) { [coming, ticket, leave, vacation] }
		
		it 'should return true for a valid user' do
			records.each do |record|
				User.authenticate(user, record).should be_true
			end
		end
		it 'should return true for admin user' do
			records.each do |record|
				User.authenticate(admin, record).should be_true
			end
		end
		it 'should return false for invalid user' do
			records.each do |record|
				User.authenticate(invalid_user, record).should be_false
			end
		end
	end
end
