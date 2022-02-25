class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :title
      t.string :address
      t.integer :area
      t.integer :price_per_day
      t.text :description
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
