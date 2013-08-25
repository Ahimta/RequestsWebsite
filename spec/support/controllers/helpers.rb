def action(action, model, includes, target = '/requests?locale=en')
	before(:all) do
		@symbol = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed @symbol
	end

	before do
		includes_stub model, includes, :find
		@double.stub(:destroy) if destroy?(action)
	end

	it 'should call Model.find' do
		includes_method model, includes, :find

		if destroy?(action)
			delete :destroy, id: 0
		else
			get action, id: 0
		end
	end

	before do
		if destroy?(action)
			delete :destroy, id: 0
		else
			get action, id: 0
		end
	end

	it { assigns(@symbol).should == @double }

	it do
		if destroy?(action)
			response.should redirect_to target
		else
			response.should render_template action
		end
	end
	
	if destroy?(action)
		it do
			@double.should_receive :destroy
			delete :destroy, id: 0
		end
	end
end

def includes_method(model, includes, method)
	if includes
		model.should_receive(:includes)
	@double.should_receive(method)
	else
	model.should_receive(method)
	end
end

def includes_stub(model, includes, method)
	if includes
		model.stub(:includes).and_return @double
		@double.stub(method).and_return @double
	else
		model.stub(method).and_return @double
	end
end

def destroy?(action)
	action == :destroy
end
