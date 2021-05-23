class CreateMovements < ActiveRecord::Migration[5.2]
  def change
    create_table :movements do |t|
      t.string :name
      t.integer :power

      t.timestamps
    end
  end
end
