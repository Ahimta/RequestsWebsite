source 'https://rubygems.org'

gem 'rails', '3.2.13'

group :development, :test do
	gem 'brakeman'
	gem 'rails_best_practices'
	gem 'factory_girl_rails'
	gem 'debugger'# To use debugger
	gem 'mysql2'
end

group :development, :production do
	gem 'unicorn'
end

group :development do
	gem 'guard-cucumber'
	gem 'guard-rspec'
end

group :test do
	gem 'cucumber-rails', require: false
	gem 'cucumber-rails-training-wheels'
	gem 'database_cleaner'
	gem 'capybara'
	gem 'launchy'
	gem 'rspec-rails'
	gem 'pickle'
	gem 'mutant'
	gem 'sqlite3'
end

group :production do
	gem 'pg'
end

group :assets do
	gem 'sass-rails'
	gem 'coffee-rails'
	gem 'uglifier'
end

gem 'paperclip', "~> 3.0"

gem 'jquery-rails'
gem 'bcrypt-ruby'# To use ActiveModel has_secure_password
gem 'haml'

gem 'rails-i18n'
gem 'turbolinks'
