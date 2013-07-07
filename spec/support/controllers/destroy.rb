shared_examples_for 'destroy' do |model, includes = true, index = '/requests?locale=en'|
	action :destroy, model, includes, index
end
