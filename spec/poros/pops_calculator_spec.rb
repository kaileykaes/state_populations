require 'spec_helper'

RSpec.describe PopsCalulator do
  before(:each) do
    @pc = PopsCalulator.new('spec/fixtures/state_pops_by_year.csv')
  end

  describe 'initialize' do 
    it 'exists and has attributes' do 
      expect(@pc).to be_a PopsCalulator
      expect(@pc.states).to be_a Array
      expect(@pc.states.first).to be_a State
    end
  end

  describe 'methods' do 
    it '#greatest_increase'

    it '#greatest_decrease'

    it '#lowest_increase'

    it '#lowest_decrease'
  end
end