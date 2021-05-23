class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :sex
      t.bigint :money
      t.boolean :gym_leader, :default => false

      t.timestamps
    end
  end
end
