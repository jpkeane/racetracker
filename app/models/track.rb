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

class Track < ApplicationRecord
  VALID_POSTCODE_REGEX = /\A([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|
  (([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9]?[A-Za-z]))))\s?[0-9][A-Za-z]{2})\z/x

  belongs_to :promotion

  validates :name, presence: true, length: { maximum: 30 }
  validates :slug, presence: true, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
  validates :promotion, presence: true
  validates :address_ln_1, length: { maximum: 100 }
  validates :address_ln_2, length: { maximum: 100 }
  validates :city, length: { maximum: 100 }
  validates :postcode, length: { maximum: 9 }, format: { with: VALID_POSTCODE_REGEX }, allow_blank: true
  validates :surface, inclusion: { in: %w[Shale Tarmac Concrete] }
  validates :length_unit, inclusion: { in: %w[m ft km] }
end
