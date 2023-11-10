require 'spec_helper'
# require '../../services/states_service'

RSpec.describe StatesService do
  describe 'class methods' do
    it '#endpoint' do 
      response = StatesService.endpoint("2013")

      expect(response).to be_a Hash
      
      response_data = response[:data]
      expect(response_data).to be_an Array

      response_data.each do |r|
        expect(r).to have_key(:name)
        expect(r[:name]).to be_a Hash
        expect(r[:name]).to have_key(:common)
        expect(r[:name][:common]).to be_a String
      end
    end
  end
end