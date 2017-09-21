class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.string :company_name
      t.string :company_number
      t.string :address_ln_1
      t.string :address_ln_2
      t.string :postcode
      t.string :telephone_main
      t.string :telephone_tickets
      t.string :telephone_bookings
      t.text :short_desc
      t.text :long_desc

      t.timestamps
    end
  end
end
