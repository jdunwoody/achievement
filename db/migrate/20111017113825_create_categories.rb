class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :url
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
