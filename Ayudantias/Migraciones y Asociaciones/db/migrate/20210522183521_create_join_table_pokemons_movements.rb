class CreateJoinTablePokemonsMovements < ActiveRecord::Migration[5.2]
  def change
    create_join_table :pokemons, :movements do |t|
      # t.index [:pokemon_id, :movement_id]
      # t.index [:movement_id, :pokemon_id]
    end
  end
end
