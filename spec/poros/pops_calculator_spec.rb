require 'spec_helper'

RSpec.describe PopsCalulator do
  describe 'initialize' do 
    it 'exists and has attributes' do 
      pc = PopsCalulator.new('spec/fixtures/all_state_pops.csv')
      expect(pc).to be_a PopsCalulator
      expect(pc.states).to be_a Array
      expect(pc.states.first).to be_a State
    end
  end

  describe 'methods' do 
    it '#greatest_increase' do 
      pc = PopsCalulator.new('spec/fixtures/all_state_pops_washington_greatest_increase.csv')
      expect(pc.greatest_increase).to eq('Washington')
    end
    
    it '#greatest_decrease' do 
      pc = PopsCalulator.new('spec/fixtures/all_state_pops_florida_greatest_decrease.csv')
      expect(pc.greatest_decrease).to eq('Florida')
    end
    
    it '#lowest_increase' do 
      pc = PopsCalulator.new('spec/fixtures/all_state_pops_dc_lowest_increase.csv')
      expect(pc.lowest_increase).to eq('District of Columbia')
    end
    
    it '#lowest_decrease' do 
      pc = PopsCalulator.new('spec/fixtures/all_state_pops_vermont_lowest_decrease.csv')
      expect(pc.lowest_decrease).to eq('Vermont')
    end
  end
end