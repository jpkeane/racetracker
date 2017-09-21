require 'rails_helper'

RSpec.describe Promotion, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :slug }
    it { is_expected.to have_attribute :company_name }
    it { is_expected.to have_attribute :company_number }
    it { is_expected.to have_attribute :address_ln_1 }
    it { is_expected.to have_attribute :address_ln_2 }
    it { is_expected.to have_attribute :postcode }
    it { is_expected.to have_attribute :telephone_main }
    it { is_expected.to have_attribute :telephone_tickets }
    it { is_expected.to have_attribute :telephone_bookings }
    it { is_expected.to have_attribute :short_desc }
    it { is_expected.to have_attribute :long_desc }
  end
end
