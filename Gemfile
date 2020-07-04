# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|sinatratime| "https://https://github.com/DadeCountyCoder/sinatratime" }

# gem "rails"
gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'sqlite3', '~> 1.3.6'
gem 'thin'
gem 'shotgun'
gem 'bcrypt'
gem 'tux'
#gem 'eventmachine'
#gem install linecache -v '1.3.1'


group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'pry'
  gem 'pry-nav'
  gem 'byebug'
  gem 'bigdecimal', '1.4.2'
  # gem 'database_cleaner', git: 'https://github.com//database_cleaner.git'
end

group :development do
  gem 'rubocop'
  # gem 'ruby-debug'
end