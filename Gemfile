# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|sinatratime| "https://https://github.com/DadeCountyCoder/sinatratime" }

# gem "rails


gem 'activerecord', '~> 4.2', '>= 4.2.6', require: 'active_record'
gem 'bcrypt'
gem 'rake'
gem 'require_all'
gem 'shotgun'
gem 'sinatra'
gem 'sinatra-activerecord', require: 'sinatra/activerecord'
gem 'sqlite3', '~> 1.3', '< 1.4'
gem 'thin'
gem 'tux'
gem 'bigdecimal', '1.3.5'

group :test do
  gem 'capybara'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
  gem 'rack-test'
  gem 'rspec'
end

group :development do
  gem 'pry'
  gem 'rubocop'
end