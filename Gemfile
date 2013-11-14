source 'https://rubygems.org'

gem 'rails'
ruby '1.9.3'

group :development, :test do
	gem 'factory_girl_rails'
	gem 'sqlite3'
	gem 'debugger'
end

group :development, :production do
	gem 'unicorn'
	# gem 'thin'
	gem 'passenger'
	gem 'puma'
	
	gem 'sass-rails'
	gem 'coffee-rails'
	gem 'uglifier'
end

group :development do
	gem 'brakeman'
	gem 'rails_best_practices'
	gem 'guard-cucumber'
	gem 'guard-rspec'
	gem 'bullet'
end

group :test do
	gem 'cucumber-rails', require: false
	gem 'cucumber-rails-training-wheels'
	gem 'database_cleaner'
	gem 'capybara'
	gem 'launchy'
	gem 'rspec-rails'
	gem 'pickle'
end

group :production do
	gem 'pg'
end

gem 'paperclip'
gem 'jquery-rails'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'rails-i18n'
gem 'turbolinks'
gem 'haml'
gem 'protected_attributes'
gem 'actionpack-page_caching'
gem 'actionpack-action_caching'
gem 'therubyracer', platforms: :ruby
