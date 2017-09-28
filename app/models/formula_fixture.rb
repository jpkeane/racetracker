class FormulaFixture < ApplicationRecord
  belongs_to :fixture
  belongs_to :formula

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates :title, length: { maximum: 200 }

  def slug_candidates
    [
      [fixture.slug, formula.slug]
    ]
  end
end
