class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :name
      t.references :level
      t.references :categories

      t.timestamps
    end
    add_index :levels, :level_id
  end
end
