# == Schema Information
#
# Table name: formulas
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  slug         :string           not null
#  short_name   :string           not null
#  promotion_id :integer
#  abbreviation :string           not null
#  contact      :string           not null
#  direction    :string           not null
#  description  :text
#  min_age      :integer
#  max_age      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe Formula, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :short_name }
    it { is_expected.to have_attribute :abbreviation }
    it { is_expected.to have_attribute :contact }
    it { is_expected.to have_attribute :direction }
    it { is_expected.to have_attribute :description }
    it { is_expected.to have_attribute :min_age }
    it { is_expected.to have_attribute :max_age }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :promotion }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :slug }
    it { is_expected.to validate_presence_of :short_name }
    it { is_expected.to validate_presence_of :abbreviation }
    it { is_expected.to validate_presence_of :contact }
    it { is_expected.to validate_presence_of :direction }

    it 'validates contact entry' do
      valid_c = %w[contact non-contact nudge-and-spin]
      valid_c.each do |c|
        formula = FactoryGirl.build(:formula, contact: c)
        expect(formula).to be_valid
      end

      invalid_c = %w[not-a-contact 111111-222222]
      invalid_c.each do |c|
        formula = FactoryGirl.build(:formula, contact: c)
        expect(formula).not_to be_valid
      end
    end
  end
end
