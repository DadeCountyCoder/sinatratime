require 'bundler/setup'
Bundler.require


require_relative '../app/models/books'
require_relative '../app/models/users'
require_relative '../app/controllers/application_controller'
require_relative '../app/controllers/books_controller'
require_relative '../app/controllers/users_controller'

# require_all 'app'

#require 'sinatra/flash'
