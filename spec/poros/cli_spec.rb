require 'spec_helper'

RSpec.describe CLI do
  before(:each) do
    @pc = PopsCalulator.new('spec/fixtures/all_state_pops.csv')
  end

  describe 'methods' do 
    it '::welcome' do
      response = CLI.welcome

      expect(response).to eq("Welcome! Would you like me to give you US population info?")
    end

    it '::start' do 
      response = CLI.start('yes')
      expect(response).to include("Type the number that corresponds to the info you want.")
      expect(response).to include("1: Greatest population increase")
      expect(response).to include("2: Greatest population decrease")
      expect(response).to include("3: Lowest population increase")
      expect(response).to include("4: Lowest population decrease")


      response = CLI.start('no')
      expect(response).to eq('Shucks. Goodbye, friend!')
    end

    it '::greatest_increase' do 
      response = CLI.greatest_increase(@pc)

      expect(response).to eq("The state with the greatest population increase between 2013 and 2021 was Puerto Rico.")
    end

    it '::greatest_decrease' do 
      response = CLI.greatest_decrease(@pc)

      expect(response).to eq("The state with the greatest population decrease between 2013 and 2021 was Texas.")
    end

    it '::lowest_decrease' do 
      response = CLI.lowest_decrease(@pc)

      expect(response).to eq("The state with the lowest population decrease between 2013 and 2021 was Wyoming.")
    end

    it '::lowest_increase' do 
      response = CLI.lowest_increase(@pc)
      
      expect(response).to eq("The state with the lowest population increase between 2013 and 2021 was Mississippi.")
    end
    
    it '::return_to_menu' do 
      response = CLI.return_to_menu

      expect(response).to eq("Would you like other population info?")
    end
  end
end