require 'rails_helper'

RSpec.describe FormulasHelper, type: :helper do
  describe '#age_range' do
    it 'expects an unbounded senior age to return string' do
      expect(helper.age_range(16, nil)).to eq 'Senior - 16 +'
    end

    it 'expects an bounded senior age to return string' do
      expect(helper.age_range(16, 19)).to eq 'Senior - 16 - 19'
    end

    it 'expects an bounded junior age to return string' do
      expect(helper.age_range(8, 12)).to eq 'Junior - 8 - 12'
    end

    it 'expects an unbounded mixed age to return string' do
      expect(helper.age_range(12, nil)).to eq 'Senior - 12 +'
    end
  end
end
