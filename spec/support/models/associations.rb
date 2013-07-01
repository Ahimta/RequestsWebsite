shared_examples_for 'request associations' do
	its(:applicant) { should be_nil }
	its(:request) { should be_nil }
	its(:user) { should be_nil }
end
