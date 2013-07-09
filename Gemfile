source 'https://rubygems.org'

gem 'rails', '3.2.13'

group :development, :test do
	gem 'factory_girl_rails'
	gem 'sqlite3'
	gem 'debugger'# To use debugger
end

group :development, :production do
	gem 'unicorn'
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
	gem 'sass-rails'
	gem 'coffee-rails'
	gem 'uglifier'
	gem 'pg'
end

gem 'paperclip'
gem 'jquery-rails'
gem 'bcrypt-ruby'# To use ActiveModel has_secure_password
gem 'rails-i18n'
gem 'turbolinks'
gem 'haml'
