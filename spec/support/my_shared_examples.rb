shared_examples_for 'index' do |model|
	let(:symbol) { model.to_s.downcase.pluralize.to_sym }
	
	it 'should call Model.all' do
		model.should_receive(:all).with(no_args)
		get :index
	end
	
	before { get :index }	
	it { response.should render_template :index }
	it { assigns(symbol).should_not == nil }
end

shared_examples_for 'show' do |model, double, symbol|
	let(:symbol) { model.to_s.downcase.to_sym }
	before { model.stub(:find).and_return double }
	
	it 'should call Model.find' do
		model.should_receive(:find).with(0.to_s)
		get :show, id: 0
	end
	
	before { get :show, id: 0 }
	
	it { assigns(symbol).should_not == nil }
	it { response.should render_template :show }
end

shared_examples_for 'new' do |model, symbol|
	let(:symbol) { model.to_s.downcase.to_sym }
	it 'should call Model.new' do
		model.should_receive(:new).with(no_args)
		get :new
	end
	
	before { get :new }
	
	it { response.should render_template :new }
	it { assigns(symbol).should_not == nil }
end

shared_examples_for 'create' do |model, double, param, symbol, index = '/requests?locale=en'|
	let(:symbol) { model.to_s.downcase.to_sym }
	before do
		model.stub(:new).and_return double
		double.stub(:save)
	end
	after { post :create, symbol => param }
	
	it { model.should_receive(:new).with(param).and_return double }
	it { double.should_receive :save }
	#TODO
	it 'should assign @record' do
		post :create, symbol => param
		assigns(symbol).should_not == nil
	end
	
	context 'fields filled in appropriately' do
		before do
			double.stub(:save).and_return true
			post :create, symbol => param
		end
		
		it { response.should redirect_to index }
		it { flash[:notice].should_not == nil }
	end
	
	context 'fields filled in inappropriately' do
		before do
			double.stub(:save).and_return false
			post :create, symbol => param
		end
		
		it { response.should render_template :new }
		it { flash[:warning].should_not == nil }
	end
end
