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
        expect(r).to have_key(:Population)
        expect(r[:Population]).to be_an Integer
        expect(r).to have_key(:"ID Year")
        expect(r[:"ID Year"]).to be_an Integer
      end
    end
  end
end