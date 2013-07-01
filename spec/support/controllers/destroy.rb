shared_examples_for 'destroy' do |model, index = '/requests?locale=en'|
	action :destroy, model, false
end
