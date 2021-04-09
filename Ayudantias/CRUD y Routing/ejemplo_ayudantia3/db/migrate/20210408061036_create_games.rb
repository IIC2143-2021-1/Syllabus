class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.float :rating
      t.integer :size_mb
      t.text :description

      t.timestamps
    end
  end
end
