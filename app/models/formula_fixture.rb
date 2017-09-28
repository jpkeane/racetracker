# == Schema Information
#
# Table name: formula_fixtures
#
#  id         :integer          not null, primary key
#  slug       :string           not null
#  fixture_id :integer          not null
#  formula_id :integer          not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FormulaFixture < ApplicationRecord
  belongs_to :fixture
  belongs_to :formula

  has_many :formula_fixture_heats

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates :title, length: { maximum: 200 }

  def slug_candidates
    [
      [fixture.slug, formula.slug]
    ]
  end
end
