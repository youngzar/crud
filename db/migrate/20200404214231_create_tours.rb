class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.text :cities
      t.text :venues
      t.integer :tickets_sold
      t.references :musicians, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
