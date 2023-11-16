require 'bundler'
Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

ENV["RACK_ENV"] = "test"

require 'rspec'
require 'rack/test'

require 'simplecov'
SimpleCov.start

RSpec.configure do |config|
  config.include Rack::Test::Methods
  
  DatabaseCleaner.strategy = :truncation
  
  config.before(:each) do
    DatabaseCleaner.clean
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_record
    with.library :active_model
  end
end