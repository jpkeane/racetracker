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

class Formula < ApplicationRecord
  belongs_to :promotion, required: false

  validates :name, presence: true, length: { maximum: 150 }
  validates :slug, presence: true, length: { maximum: 80 }, uniqueness: { case_sensitive: false }
  validates :short_name, presence: true, length: { maximum: 60 }
  validates :abbreviation, presence: true, length: { maximum: 6 }
  validates :contact, presence: true, inclusion: { in: %w[contact non-contact nudge-and-spin] }
  validates :direction, presence: true, length: { maximum: 15 }
end
