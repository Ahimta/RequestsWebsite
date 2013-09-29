require 'spec_helper'

describe ApplicantsController do
  let!(:admin) { FactoryGirl.create :admin, username: 'userr' }
  before { session[:user_id] = admin.id }
  
  context 'logged in as admin' do
    it_behaves_like 'index', Applicant
  	
  	it_behaves_like 'show', Applicant
  	
  	it_behaves_like 'destroy', Applicant
  end
end
