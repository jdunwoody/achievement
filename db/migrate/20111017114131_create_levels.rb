class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :name
      t.references :skill_tree

      t.timestamps
    end
  end
end
