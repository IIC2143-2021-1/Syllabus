class CreateGuidelines < ActiveRecord::Migration[5.2]
  def change
    create_table :guidelines do |t|
      t.string :test
      t.integer :semester
      t.integer :year
      t.integer :size_mb
      t.text :description

      t.timestamps
    end
  end
end
