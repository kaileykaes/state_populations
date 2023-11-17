require 'bundler'
Bundler.require(:default)
require File.expand_path('../../config/environment.rb', __FILE__)

namespace :csv do 
  task :create do 
    StatePopsFacade.new.save_all('/data/states_info.csv')
  end

  task :delete do 
    csv_file = '/data/states_info.csv'
    if File.exists?(csv_file)
      File.delete(csv_file)
    end
  end
end