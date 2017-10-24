# == Schema Information
#
# Table name: formula_fixture_heats
#
#  id                 :integer          not null, primary key
#  heat_number        :integer          not null
#  race_number        :integer          not null
#  slug               :string           not null
#  formula_fixture_id :integer          not null
#  title              :string
#  race_type          :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe FormulaFixtureHeat, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :heat_number }
    it { is_expected.to have_attribute :race_number }
    it { is_expected.to have_attribute :title }
    it { is_expected.to have_attribute :race_type }
    it { is_expected.to have_attribute :laps }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :formula_fixture }
  end

  describe 'validations' do
    subject do
      FactoryGirl.build(:formula_fixture_heat)
    end

    it { is_expected.to validate_presence_of :heat_number }

    it 'validates race_type' do
      valid_t = %w[normal showdown dd figure-of-8]
      valid_t.each do |t|
        fixheat = FactoryGirl.build(:formula_fixture_heat, race_type: t)
        expect(fixheat).to be_valid
      end

      invalid_t = %w[not-a-type 111111-222222]
      invalid_t.each do |t|
        fixheat = FactoryGirl.build(:formula_fixture_heat, race_type: t)
        expect(fixheat).not_to be_valid
      end
    end

    it 'validates laps' do
      valid_l = [1, 75, 12]
      valid_l.each do |l|
        fixheat = FactoryGirl.build(:formula_fixture_heat, laps: l)
        expect(fixheat).to be_valid
      end

      invalid_l = [-2, 'tt']
      invalid_l.each do |l|
        fixheat = FactoryGirl.build(:formula_fixture_heat, laps: l)
        expect(fixheat).not_to be_valid
      end
    end
  end
end
