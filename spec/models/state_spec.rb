require 'spec_helper'

RSpec.describe State, type: :model do
  before(:each) do 
    StatePopsFacade.new.save_all
  end

  describe 'methods' do
    it '#greatest_increase' do 
      require 'pry'; binding.pry
    end

    it '#greatest_decrease'

    it '#lowest_increase'

    it '#lowest_decrease'

  end
end