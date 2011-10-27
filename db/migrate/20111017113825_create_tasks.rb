class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :url
      t.text :description
      t.boolean :status
      t.references :frequency
      t.references :level

      t.timestamps
    end
  end
end
