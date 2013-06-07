shared_examples_for 'index' do |model|
	before do
		@symbol = model.to_s.downcase.pluralize.to_sym
		factory = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed_list factory, 3
		model.stub(:all).and_return @double
	end
	
	it 'should call Model.all' do
		model.should_receive(:scoped).with(no_args).and_return @double
		get :index
	end
	
	before { get :index }	
	it { response.should render_template :index }
	it { assigns(@symbol).should_not == nil }
end
