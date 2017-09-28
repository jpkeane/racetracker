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

  describe '#formula_fixture_desc' do
    it 'should return without title' do
      ff = FactoryGirl.create(:formula_fixture, title: nil)
      expect(helper.formula_fixture_desc(ff)).to eq "#{ff.fixture.short_date} - #{ff.fixture.name}"
    end

    it 'should return with title' do
      ff = FactoryGirl.create(:formula_fixture)
      expect(helper.formula_fixture_desc(ff)).to eq "#{ff.fixture.short_date} - #{ff.fixture.name} (#{ff.title})"
    end
  end
end
