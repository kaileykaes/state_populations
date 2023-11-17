require 'spec_helper'

RSpec.describe State do
  before(:each) do
    states = CSV.open('spec/fixtures/state_pops_by_year.csv', headers: true, header_converters: :symbol)
    state_info = states.first
    @state = State.new(state_info)
  end

  describe 'initialize' do 
    it 'exists and has attributes' do 
      expect(@state).to be_a State
      expect(@state.id).to eq('04000US01')
      expect(@state.name).to eq('Alabama')
      expect(@state.year).to eq(2013)
      expect(@state.population).to eq(4799277)
    end
  end
end
