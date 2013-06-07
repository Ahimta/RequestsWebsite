shared_examples_for 'edit' do |model|
	before do
		@symbol = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed @symbol
		model.stub(:find).and_return @double
	end
	
	it 'should call Model.find' do
		model.should_receive(:find).with(0.to_s)
		get :edit, id: 0
	end
	
	before { get :edit, id: 0 }
	
	it { assigns(@symbol).should == @double }
	it { response.should render_template :edit }
end
