class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequency do |t|
      t.string :name

      t.timestamps
    end
  end
end
