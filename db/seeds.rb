require 'bundler'
Bundler.require(:default)
require File.expand_path('../../config/environment.rb', __FILE__)

StatePopsFacade.new.save_all
require 'pry'; binding.pry