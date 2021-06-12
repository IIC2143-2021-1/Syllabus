class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :edition
      t.float :rating
      t.integer :size_mb
      t.text :description

      t.timestamps
    end
  end
end
