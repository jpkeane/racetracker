class CreateFixtures < ActiveRecord::Migration[5.1]
  def change
    create_table :fixtures do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.references :track, foreign_key: true, null: false
      t.datetime :start_time, null: false
      t.text :short_desc
      t.text :long_desc

      t.timestamps
    end
  end
end
