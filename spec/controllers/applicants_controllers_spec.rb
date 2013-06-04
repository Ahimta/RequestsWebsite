require 'spec_helper'

describe ApplicantsController do
	it_behaves_like 'index', Applicant
	
	it_behaves_like 'show', Applicant
	
	it_behaves_like 'edit', Applicant
	
	it_behaves_like 'update', Applicant
	
	it_behaves_like 'destroy', Applicant
end
