# == Schema Information
#
# Table name: formula_fixture_heats
#
#  id                 :integer          not null, primary key
#  heat_number        :integer          not null
#  race_number        :integer          not null
#  slug               :string           not null
#  formula_fixture_id :integer          not null
#  title              :string
#  race_type          :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class FormulaFixtureHeat < ApplicationRecord
  belongs_to :formula_fixture
  has_one :formula, through: :formula_fixture

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  validates :race_type, presence: true, inclusion: { in: %w[normal showdown dd figure-of-8] }
  validates :heat_number, presence: true
  validates :laps, numericality: { greater_than_or_equal_to: 0 }

  def slug_candidates
    [
      [formula_fixture.slug, heat_number]
    ]
  end
end
