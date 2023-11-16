require 'spec_helper'

RSpec.describe 'State Populations Facade' do  
  describe 'methods' do
    before(:each) do 
      @spf = StatePopsFacade.new
    end

    it '#save_data' do 
      expect(State.count).to eq(0)
      expect(Year.count).to eq(0)

      @spf.save_data_by_year(2013)

      expect(State.count).to eq(52)
      expect(Year.count).to eq(52)
      expect(Year.first.year).to eq(2013)
      expect(Year.last.year).to eq(2013)
    end

    it '::save_all' do 
      @spf.save_all 

      expect(State.count).to eq(52)

      alabama = State.where(name: 'Alabama').first

      expect(alabama.years.count).to eq(9) 

      single_population = alabama.years.first.population

      expect(single_population).to eq(4799277)
    end
  end
end