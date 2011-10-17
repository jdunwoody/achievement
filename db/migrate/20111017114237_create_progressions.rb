class CreateProgressions < ActiveRecord::Migration
  def change
    create_table :progressions do |t|
      t.string :name
      t.references :level

      t.timestamps
    end
    add_index :progressions, :levels_id
  end
end
