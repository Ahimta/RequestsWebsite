shared_examples_for 'index' do |model, includes=true|
	before(:all) do
		@symbol = model.to_s.downcase.pluralize.to_sym
		factory = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed_list factory, 3
	end
	before do
		if includes
			model.stub!(:includes).and_return @double
			@double.stub!(:scoped).and_return @double
		else
			model.stub!(:scoped).and_return @double
		end
	end
	
	it 'should call Model.all' do
		if includes
			model.should_receive(:includes)
			@double.should_receive(:scoped).with no_args
		else
			model.should_receive(:scoped).with no_args
		end
		
		get :index
	end
	
	before { get :index }	
	it { response.should render_template :index }
	it { assigns(@symbol).should_not == nil }
end
