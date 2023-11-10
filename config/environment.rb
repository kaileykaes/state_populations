require "bundler"
Bundler.require
# get the path of the root of the app
APP_ROOT = File.expand_path('..', __dir__)
# require the model(s)
Dir.glob(File.join(APP_ROOT, 'app', 'models', '*.rb')).each { |file| require file }
#require the services
Dir.glob(File.join(APP_ROOT, 'app', 'services', '*.rb')).each { |file| require file }
# require database configurations
# require File.join(APP_ROOT, 'config', 'database')
# configure runner settings
class Application < Sinatra::Base
  set :method_override, true
  set :root, APP_ROOT
  set :database_file, "./database.yml"
end