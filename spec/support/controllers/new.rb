shared_examples_for 'new' do |model|
	before do
		@symbol = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed @symbol
		
		model.stub(:new).and_return @double
		get :new
	end
	
	it 'should call Model.new' do
		model.should_receive(:new).and_return @double
		get :new
	end
	
	before { get :new }
	
	it { response.should render_template :new }
	it { assigns(@symbol).should == @double }
end
