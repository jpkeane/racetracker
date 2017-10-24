require 'rails_helper'

RSpec.describe FixturesHelper, type: :helper do
  describe '#heat_desc' do
    it 'should return correct untitled heat' do
      expect(helper.heat_desc(1)).to eq 'Heat 1'
    end
  end

  describe '#type_desc' do
    it 'should correct type string' do
      expect(helper.type_desc('dd')).to eq 'Destruction Derby'
    end
  end
end
