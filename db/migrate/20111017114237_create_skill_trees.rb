class CreateSkillTrees < ActiveRecord::Migration
  def change
    create_table :skill_trees do |t|
      t.string :name
      t.references :level

      t.timestamps
    end
    add_index :skill_trees
  end
end
