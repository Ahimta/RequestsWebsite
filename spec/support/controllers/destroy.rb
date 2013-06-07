shared_examples_for 'destroy' do |model, index = '/requests?locale=en'|
	before do
		@symbol = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed @symbol
		model.stub(:find).and_return @double
		@double.stub(:destroy)
	end
	after { delete :destroy, id: 0 }
	
	it { model.should_receive(:find).with('0') }
	it { @double.should_receive(:destroy).with(no_args) }
	
	before { delete :destroy, id: 0 }
	
	it { assigns(@symbol).should == @double }
	it { response.should redirect_to index }
end
