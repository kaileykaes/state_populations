require 'bundler'
Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

require 'rspec'
require 'csv'

require 'simplecov'
SimpleCov.start

RSpec.configure do |config|
  
  end
end