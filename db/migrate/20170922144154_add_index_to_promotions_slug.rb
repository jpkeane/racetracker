class AddIndexToPromotionsSlug < ActiveRecord::Migration[5.1]
  def change
    add_index :promotions, :slug, unique: true
  end
end
