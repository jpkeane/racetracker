require 'rails_helper'

RSpec.describe Promotion, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :company_name }
    it { is_expected.to have_attribute :company_number }
    it { is_expected.to have_attribute :address_ln_1 }
    it { is_expected.to have_attribute :address_ln_2 }
    it { is_expected.to have_attribute :city }
    it { is_expected.to have_attribute :postcode }
    it { is_expected.to have_attribute :telephone_main }
    it { is_expected.to have_attribute :telephone_tickets }
    it { is_expected.to have_attribute :telephone_bookings }
    it { is_expected.to have_attribute :short_desc }
    it { is_expected.to have_attribute :long_desc }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :slug }

    it { is_expected.to validate_length_of(:name).is_at_most(30) }
    it { is_expected.to validate_length_of(:slug).is_at_most(30) }
    it { is_expected.to validate_length_of(:company_name).is_at_most(100) }
    it { is_expected.to validate_length_of(:company_number).is_at_most(10) }
    it { is_expected.to validate_length_of(:address_ln_1).is_at_most(100) }
    it { is_expected.to validate_length_of(:address_ln_2).is_at_most(100) }
    it { is_expected.to validate_length_of(:city).is_at_most(100) }
    it { is_expected.to validate_length_of(:postcode).is_at_most(8) }

    describe 'uniqueness' do
      subject do
        FactoryGirl.build(:promotion)
      end

      it { is_expected.to validate_uniqueness_of(:slug).case_insensitive }
    end

    it 'validates format of postcode' do
      valid_pc = ['CW3 9SS', 'WC2H 7LT']
      valid_pc.each do |pc|
        promo = FactoryGirl.build(:promotion, postcode: pc)
        expect(promo).to be_valid
      end

      invalid_pc = ['aWC2H 7LT', 'WC2H 7LTa', 'WC2H']
      invalid_pc.each do |pc|
        promo = FactoryGirl.build(:promotion, postcode: pc)
        expect(promo).not_to be_valid
      end
    end

    it 'validates format of company code' do
      valid_cn = %w[01234567 SC123456 SO123456 SL123456 NI123456 NC123456]
      valid_cn.each do |cn|
        promo = FactoryGirl.build(:promotion, company_number: cn)
        expect(promo).to be_valid
      end

      invalid_cn = %w[4567 SP123456 NP123456]
      invalid_cn.each do |cn|
        promo = FactoryGirl.build(:promotion, company_number: cn)
        expect(promo).not_to be_valid
      end
    end
  end
end
