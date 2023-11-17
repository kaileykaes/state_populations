require 'spec_helper'

RSpec.describe 'State Populations Facade' do  
  describe 'methods' do
    before(:each) do 
      @spf = StatePopsFacade.new
      clean_up_test_files
      @save_data_by_year_csv = 'spec/fixtures/state_pops_by_year.csv'
      @save_all_csv = 'spec/fixtures/all_state_pops.csv'
    end

    it '#save_data_by_year' do 
      save_data_by_year_test = 'spec/data/state_pops_by_year.csv'
      expected = File.exists?(save_data_by_year_test)
      expect(expected).to eq(false)
      
      @spf.save_data_by_year(2013, save_data_by_year_test)
      test_file = File.read(save_data_by_year_test)
      fixture_file = File.read(@save_data_by_year_csv)
      
      expect(test_file).to eq(fixture_file)
    end

    it '::save_all' do 
      @spf.save_all()

    end
  end
end