# == Schema Information
#
# Table name: fixtures
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  slug       :string           not null
#  track_id   :integer          not null
#  start_time :datetime         not null
#  short_desc :text
#  long_desc  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Fixture, type: :model do
  describe 'attributes' do
    it { is_expected.to have_attribute :name }
    it { is_expected.to have_attribute :start_time }
    it { is_expected.to have_attribute :short_desc }
    it { is_expected.to have_attribute :long_desc }
  end

  describe 'relationships' do
    it { is_expected.to belong_to :track }
  end

  describe 'validations' do
    subject do
      FactoryGirl.build(:fixture)
    end

    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :start_time }

    it { is_expected.to validate_length_of(:name).is_at_most(200) }
    it { is_expected.to validate_length_of(:slug).is_at_most(290) }
  end

  describe 'methods' do
    let!(:fixture) { FactoryGirl.create(:fixture) }

    it '#short_date should return date in correct format' do
      expect(fixture.short_date).to eq fixture.start_time.strftime('%d/%m/%Y')
    end
  end
end
