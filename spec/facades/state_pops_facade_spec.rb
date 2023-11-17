require 'spec_helper'

RSpec.describe 'State Populations Facade' do  
  describe 'methods' do
    before(:each) do 
      @spf = StatePopsFacade.new
    end

    it '#save_data' do 
      expect(State.count).to eq(0)

      @spf.save_data_by_year(2013)

      expect(State.count).to eq(52)
    end

    it '::save_all' do 
      @spf.save_all 

      expect(State.count).to eq(468)

      alabama = State.where(name: 'Alabama').first
      expect(alabama.name).to eq('Alabama') 
      expect(alabama.year).to eq(2013)
      expect(alabama.population).to eq(4799277)
    end
  end
end