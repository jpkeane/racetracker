require 'rails_helper'

RSpec.describe FormulaFixture, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :title }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :fixture }
    it { is_expected.to belong_to :formula }
  end

  describe 'validations' do
    subject do
      FactoryGirl.build(:formula_fixture)
    end

    it { is_expected.to validate_length_of(:title).is_at_most(200) }
  end
end
