class AddTrainerToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_reference :pokemons, :trainer, foreign_key: true
  end
end
