class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.references :promotion, foreign_key: true
      t.string :address_ln_1
      t.string :address_ln_2
      t.string :city
      t.string :postcode
      t.string :telephone_office
      t.string :telephone_tickets
      t.string :telephone_bookings
      t.string :surface
      t.float :length
      t.string :length_unit

      t.timestamps
    end

    add_index :tracks, :slug, unique: true
  end
end
