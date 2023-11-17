require 'spec_helper'

RSpec.describe PopsCalulator do
  before(:each) do
    @pc = PopsCalulator.new('spec/fixtures/all_state_pops.csv')
  end

  describe 'initialize' do 
    it 'exists and has attributes' do 
      expect(@pc).to be_a PopsCalulator
      expect(@pc.states).to be_a Array
      expect(@pc.states.first).to be_a State
    end
  end

  describe 'methods' do 
    it '#greatest_increase' do 
      expect(@pc.greatest_increase).to eq('Puerto Rico')
    end

    it '#greatest_decrease' do 
      expect(@pc.greatest_decrease).to eq('Texas')
    end

    it '#lowest_increase' do 
      @pc.lowest_increase
      expect(@pc.lowest_increase).to eq('Mississippi')
    end

    it '#lowest_decrease' do 
      expect(@pc.lowest_decrease).to eq('Wyoming')
    end
  end
end