class CreateGenerations < ActiveRecord::Migration[5.1]
  def change
    create_table :generations do |t|
      t.integer :gen
      t.string :region

      t.timestamps
    end
  end
end
