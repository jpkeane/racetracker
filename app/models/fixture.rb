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

class Fixture < ApplicationRecord
  belongs_to :track
  has_one :promotion, through: :track
  has_many :formula_fixtures

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates :name, presence: true, length: { maximum: 200 }
  validates :slug, presence: true, length: { maximum: 290 }, uniqueness: { case_sensitive: false }
  validates :start_time, presence: true

  def slug_candidates
    [
      [track.slug, slug_date]
    ]
  end

  def short_date
    start_time.strftime('%d/%m/%Y')
  end

  private

  def slug_date
    start_time.strftime('%d-%m-%Y')
  end
end
