require 'bundler'
Bundler.require(:default)
require File.expand_path('../../../config/environment.rb', __FILE__)

path = '/Users/kaileykaes/Projects/job_hunt/state_populations/data/state_info.csv'

namespace :csv do 
  task :create do 
    StatePopsFacade.new.save_all(path)
  end

  task :delete do 
    if File.exists?(path)
      File.delete(path)
    end
  end
end