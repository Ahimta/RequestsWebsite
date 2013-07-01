def action(action, model, includes)
	before(:all) do
		@symbol = model.to_s.downcase.to_sym
		@double = FactoryGirl.build_stubbed @symbol
	end
	
	before { includes_stub model, includes, :find }
	
	it 'should call Model.find' do
		includes_method model, includes, :find

		if action == :destroy
			delete :destroy, id: 0
		else
			get action, id: 0
		end
	end
	
	if action == :destroy then before { delete :destroy, id: 0 }
	else before { get action, id: 0 }
	end
	
	it { assigns(@symbol).should == @double }

	if action == :destroy
		it { response.should redirect_to '/requests?locale=en' }
	else
		it { response.should render_template action }
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
		model.stub!(:includes).and_return @double
		@double.stub!(method).and_return @double
	else
		model.stub!(method).and_return @double
	end
end
