source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'
gem 'pg'

# Net::SSH: a pure Ruby implementation of the SSH2 client protocol
gem 'net-ssh', '2.7.0'

# Use sqlite3 as the database for Active Record
gem 'mysql2'

gem 'less-rails'
gem 'haml'
gem 'capybara', 		'~> 2.2.1'
gem 'launchy',  		'~> 2.1.2'
# gem 'unicorn',  		'~> 4.8.2'
# gem 'unicorn-rails', 	'~> 1.1.0'
# gem 'kgio', 			'~> 2.9.2'
gem 'devise',           '~> 3.2.2'
gem 'rails_admin'
gem 'timecop'
gem 'guard-rails', require: false
gem 'fabrication'
gem 'annotate', '~> 2.6.5'
gem 'faker'
gem 'pry'
gem 'sinatra', '>= 1.3.0', :require => nil

# Use MailGun for ActionMailer Mail Delivery
gem 'mailgun_rails'

# Async processing of background jobs
gem 'sidekiq'

# CRON jobs in Ruby
gem 'whenever', require: false

# Capistrano for Deployment
gem 'capistrano', '~> 3.1.0'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1.1'

# Add this if you're using rvm
gem 'capistrano-rvm', github: "capistrano/rvm"

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Capistrano Notifications
gem 'capistrano-nc', '~> 0.1.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
	gem 'guard'
  gem 'binding_of_caller'
	# gem 'capistrano3-unicorn'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
end

group :test do
  gem 'shoulda-matchers'
  gem 'rspec-sidekiq'

  # test email specs
  gem 'email_spec'

  gem 'cucumber-rails', require: false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'

  # Add Test Spies to Mocha
  gem 'bourne'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn', '~>4.6.3'

gem 'rails_12factor', group: :production
