class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end

  def index
    @pokemons = Pokemon.all
  end

  def create
    @pokemon_params = params.require(:pokemon).permit(:nombre)
    @pokemon = Pokemon.create(@pokemon_params)

    if @pokemon.save
      redirect_to pokemons_index_path, notice: 'pokemon has been created'
    else
      redirect_to pokemons_new_path, notice: 'fatal error'
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    @pokemon = Pokemon.find(params[:id])
    @pokemon_params = params.require(:pokemon).permit(:nombre)

    if @pokemon.update(@pokemon_params)
      redirect_to pokemon_path(@pokemon.id), notice: 'pokemon editado con éxito'
    else
      redirect_to pokemon_edit_path(@pokemon.id), notice: 'Error'
    end
  end

  def delete
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect_to pokemons_index_path
  end
end
