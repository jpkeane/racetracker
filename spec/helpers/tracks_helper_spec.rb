require 'rails_helper'

RSpec.describe FormulasHelper, type: :helper do
  describe '#formatted_length' do
    it 'should format the track length' do
      expect(helper.formatted_length(321.12, 'm')).to eq '321m'
      expect(helper.formatted_length(321.50, 'yds')).to eq '322yds'
    end
  end
end
