class AddStatsToPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :attack, :integer
    add_column :pokemons, :defense, :integer
    add_column :pokemons, :speed, :float
  end
end
