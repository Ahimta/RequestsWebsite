shared_examples_for 'update' do |model, index = '/requests?locale=en'|
	before do
		@symbol = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed @symbol
		model.stub(:find).and_return @double
		@double.stub(:attributes=).and_return @double
		@double.stub(:save)
	end
	after { put :update, @symbol => 'record', id: 0 }
	
	it { model.should_receive(:find).with('0') }
	it { @double.should_receive(:save).with(no_args) }
	it { @double.should_receive(:attributes=).with('record') }
	it 'should assign @record' do
		put :update, @symbol => 'record', id: 0
		assigns(@symbol).should == @double
	end
	
	context 'fields filled in appropriately' do
		before do
			@double.stub(:save).and_return true
			put :update, @symbol => 'record', id: 0
		end
		
		it { response.should redirect_to index }
	end
	
	context 'fields filled in inappropriately' do
		before do
			double.stub(:save).and_return false
			put :update, @symbol => 'record', id: 0
		end
		
		it { response.should render_template :edit }
	end
end
