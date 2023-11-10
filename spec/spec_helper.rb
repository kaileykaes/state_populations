ENV["RACK_ENV"] = "test"

require 'rspec'
require 'rack/test'

require 'bundler'
Bundler.require(:default, :test)


require File.expand_path('../../config/environment.rb', __FILE__)

require 'simplecov'
SimpleCov.start


def app
  Application
end


RSpec.configure do |config|
  config.include Rack::Test::Methods
end
