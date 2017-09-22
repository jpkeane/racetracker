# == Schema Information
#
# Table name: tracks
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  slug               :string           not null
#  promotion_id       :integer
#  address_ln_1       :string
#  address_ln_2       :string
#  city               :string
#  postcode           :string
#  telephone_office   :string
#  telephone_tickets  :string
#  telephone_bookings :string
#  surface            :string
#  length             :float
#  length_unit        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe Track, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :address_ln_1 }
    it { is_expected.to have_attribute :address_ln_2 }
    it { is_expected.to have_attribute :city }
    it { is_expected.to have_attribute :postcode }
    it { is_expected.to have_attribute :telephone_office }
    it { is_expected.to have_attribute :telephone_tickets }
    it { is_expected.to have_attribute :telephone_bookings }
    it { is_expected.to have_attribute :surface }
    it { is_expected.to have_attribute :length }
    it { is_expected.to have_attribute :length_unit }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :promotion }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :slug }
    it { is_expected.to validate_length_of(:address_ln_1).is_at_most(100) }
    it { is_expected.to validate_length_of(:address_ln_2).is_at_most(100) }
    it { is_expected.to validate_length_of(:city).is_at_most(100) }
    it { is_expected.to validate_length_of(:postcode).is_at_most(9) }

    it 'validates surface type' do
      valid_s = %w[Shale Tarmac Concrete]
      valid_s.each do |s|
        track = FactoryGirl.build(:track, surface: s)
        expect(track).to be_valid
      end

      invalid_s = %w[bubbles foam]
      invalid_s.each do |s|
        track = FactoryGirl.build(:track, surface: s)
        expect(track).not_to be_valid
      end
    end

    it 'validates track length units' do
      valid_u = %w[m ft km]
      valid_u.each do |u|
        track = FactoryGirl.build(:track, length_unit: u)
        expect(track).to be_valid
      end

      invalid_u = %w[yds chains]
      invalid_u.each do |u|
        track = FactoryGirl.build(:track, length_unit: u)
        expect(track).not_to be_valid
      end
    end
  end
end
