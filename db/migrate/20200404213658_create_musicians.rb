class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.text :songs
      t.integer :monthly_listeners
      t.integer :fans

      t.timestamps null: false
    end
  end
end
