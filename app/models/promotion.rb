# == Schema Information
#
# Table name: promotions
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  slug               :string           not null
#  company_name       :string
#  company_number     :string
#  address_ln_1       :string
#  address_ln_2       :string
#  city               :string
#  postcode           :string
#  telephone_main     :string
#  telephone_tickets  :string
#  telephone_bookings :string
#  short_desc         :text
#  long_desc          :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Promotion < ApplicationRecord
  VALID_POSTCODE_REGEX = /\A([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|
  (([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9]?[A-Za-z]))))\s?[0-9][A-Za-z]{2})\z/x

  VALID_COMPANY_NUMBER_REGEX = /\A([0-9]{8})|((N(I|C))|(S(C|L|O)))[0-9]{6}\z/

  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :tracks
  has_many :fixtures, through: :tracks

  validates :name, presence: true, length: { maximum: 30 }
  validates :slug, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
  validates :company_name, length: { maximum: 100 }
  validates :company_number, length: { maximum: 10 }, format: { with: VALID_COMPANY_NUMBER_REGEX }, allow_blank: true
  validates :address_ln_1, length: { maximum: 100 }
  validates :address_ln_2, length: { maximum: 100 }
  validates :city, length: { maximum: 100 }
  validates :postcode, length: { maximum: 9 }, format: { with: VALID_POSTCODE_REGEX }, allow_blank: true
end
