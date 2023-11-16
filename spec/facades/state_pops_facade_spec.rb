require 'spec_helper'

RSpec.describe 'State Populations Facade' do  
  describe 'methods' do
    before(:each) do 
      @spf = StatePopsFacade.new
    end

    it '#save_data' do 
      expect(State.all.count).to eq(0)
      @spf.save_data('Alabama', 2013)
      expect(State.all.count).to eq(1)
      expect(Year.all.count).to eq(1)
      # expect(Year.population).to eq()
    end
  end
end