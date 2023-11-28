require 'bundler'
Bundler.require(:default)
require File.expand_path('../config/environment.rb', __FILE__)

@pc = PopsCalulator.new('data/state_info.csv')

puts CLI.welcome
@answer = gets.chomp


loop do 
  while @answer == 'yes' 
    puts CLI.start(@answer)

    num = gets.chomp

    if num == '1'
      puts CLI.greatest_increase(@pc)
    elsif num == '2'
      puts CLI.greatest_decrease(@pc)
    elsif num == '3' 
      puts CLI.lowest_increase(@pc)
    elsif num == '4' 
      puts CLI.lowest_decrease(@pc)
    end

    puts CLI.return_to_menu

    @answer = gets.chomp
  end
  puts CLI.start(@answer)
  break
end