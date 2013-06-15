shared_examples_for 'create' do |model, index = '/requests?locale=en'|
	before do
		@symbol = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed @symbol
		@param = 'x'
		model.stub(:new).and_return @double
		@double.stub(:save)
		
		Ticket.stub :has_right?
	end
	after { post :create, @symbol => @param }
	
	it { model.should_receive(:new).with(@param).and_return @double }
	it { @double.should_receive :save }
	it 'should assign @record' do
		post :create, @symbol => @param
		assigns(@symbol).should == @double
	end
	
	context 'fields filled in appropriately' do
		before do
			@double.stub(:save).and_return true
			post :create, @symbol => @param
		end
		
		it { response.should redirect_to index }
		it { flash[:notice].should_not == nil }
	end
	
	context 'fields filled in inappropriately' do
		before do
			double.stub(:save).and_return false
			post :create, @symbol => @param
		end
		
		it { response.should render_template :new }
		it { flash[:warning].should_not == nil }
	end
end
