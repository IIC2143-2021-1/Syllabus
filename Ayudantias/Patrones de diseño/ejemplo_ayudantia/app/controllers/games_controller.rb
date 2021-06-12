class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @games_params = params.require(:game).permit(:title, :rating, :size_mb, :description)
    @game = Game.create(@games_params)
    if @game.save
      redirect_to games_index_path, notice: "El juego ha sido creado correctamente"
    else
      redirect_to games_index_path, notice: "Error al crear el juego"
    end
  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @games_params = params.require(:game).permit(:title, :rating, :size_mb, :description)

    if @game.update(@games_params)
      redirect_to games_index_path, notice: "El juego ha sido editado correctamente"
    else
      redirect_to games_index_path, notice: "Error al editar el juego"
    end
  end

  def delete
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_index_path, notice: "El juego ha sido eliminado"
  end
end
