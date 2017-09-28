# == Schema Information
#
# Table name: formula_fixtures
#
#  id         :integer          not null, primary key
#  slug       :string           not null
#  fixture_id :integer          not null
#  formula_id :integer          not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

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
