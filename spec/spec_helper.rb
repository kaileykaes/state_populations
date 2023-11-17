require 'bundler'
Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

require 'rspec'
require 'csv'

require 'simplecov'
SimpleCov.start


def clean_up_test_files
  data_by_year_test = '/data/state_pops_by_year.csv'
  all_test = '/data/all_state_pops.csv'
  
  if File.exists?(data_by_year_test)
    File.delete(data_by_year_test)
  end

  if File.exists?(all_test)
    File.delete(all_test)
  end
end