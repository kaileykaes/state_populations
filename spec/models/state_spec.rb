require 'spec_helper'

RSpec.describe State, type: :model do
  describe 'relationships' do
    it {should have_many :years}    
  end
end