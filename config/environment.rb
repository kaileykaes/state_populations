require "bundler"
Bundler.require
# get the path of the root of the app
APP_ROOT = File.expand_path('..', __dir__)

#require facades
Dir.glob(File.join(APP_ROOT, 'app', 'facades', '*.rb')).each { |file| require file }

#require services
Dir.glob(File.join(APP_ROOT, 'app', 'services', '*.rb')).each { |file| require file }

#require data
Dir.glob(File.join(APP_ROOT, 'app', 'data', '*.csv')).each { |file| require file }

