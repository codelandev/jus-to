source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster.
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Flexible authentication solution for Rails with Warden.
gem 'devise'
gem 'devise-i18n'
# Helps you organize your javascript to play nice with Rails' asset pipeline
gem 'initjs', '~> 2.1.2'
# Central point to collect locale data for use in Ruby on Rails
gem 'rails-i18n', '~> 4.0.4'
# Template language that reduce the syntax to the essentials while not cryptic
gem 'slim-rails', '~> 3.0.1'
# Parse CSS and add vendor prefixes to rules by Can I Use
gem 'autoprefixer-rails', '~> 5.2.1'
# Front-end framework for developing responsive, mobile first projects
gem 'bootstrap-sass', '~> 3.3.5'
# The iconic font and CSS toolkit
gem 'font-awesome-sass', '~> 4.6.2'
# Decorators/View-Models for Rails Applications
gem 'draper', '~> 1.3'
# Forms made easy for Rails!
gem 'simple_form'
# Simple and easy flash messages
gem 'toastr_rails'

group :development, :test do
  # 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # A library for setting up Ruby objects as test data
  gem 'factory_girl_rails', '~> 4.5.0'
  # rspec-rails is a testing framework for Rails 3.x, 4.x and 5.0
  gem 'rspec-rails', '~> 3.3.3'
  # Pretty print your Ruby objects with style -- in full color and with proper indentation
  gem 'awesome_print', '~> 1.6.1', require: false
  # spring-commands-rspec implements the rspec command for Spring
  gem 'spring-commands-rspec', '~> 1.0.4'
  # A very fast & simple Ruby web server
  gem 'thin', '~> 1.6.3'
  # Loads environment variables from `.env`
  gem 'dotenv-rails', '~> 2.0.2'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Rails application preloader. Keeps your app running in the background
  gem 'spring'
  # Profiler for your development and production Ruby rack apps
  gem 'rack-mini-profiler'
  # Preview mail in the browser instead of sending.
  gem 'letter_opener'
end

group :test do
  # Code coverage for Ruby 1.9+
  gem 'simplecov', '~> 0.10.0', require: false
  # Strategies for cleaning databases in Ruby
  gem 'database_cleaner', '~> 1.4.1'
  # Collection of testing matchers extracted from Shoulda
  gem 'shoulda-matchers', '~> 2.8.0', require: false
  # Acceptance test framework for web applications
  gem 'capybara'
  # Mimic the behaviour of a real user, interacting with the HTML
  gem 'selenium-webdriver'
end

group :production do
  # Makes running your Rails app easier. Based on the ideas behind 12factor.net
  gem 'rails_12factor', '~> 0.0.3'
  # A modern web server and application server for Ruby, Python and Node.js
  gem 'passenger', '~> 5.0'
end
