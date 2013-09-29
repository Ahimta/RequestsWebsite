require 'spec_helper'

describe ApplicantsController do
  context 'logged in as regular user' do
  	it_behaves_like 'index', Applicant
  	
  	it_behaves_like 'show', Applicant
  	
  	it_behaves_like 'destroy', Applicant
  end
end
