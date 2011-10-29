class CreateSkillTrees < ActiveRecord::Migration
  def change
    create_table :skill_trees do |t|
      t.string :name

      t.timestamps
    end
  end
end
