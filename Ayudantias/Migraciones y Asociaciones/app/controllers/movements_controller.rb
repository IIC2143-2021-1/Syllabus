class MovementsController < ApplicationController
  def new
    @movement = Movement.new
  end

  def index
    @movements = Movement.all
  end

  def create
    @movement_params = params.require(:movement).permit(:nombre)
    @movement = Movement.create(@movement_params)

    if @movement.save
      redirect_to movements_index_path, notice: 'movement has been created'
    else
      redirect_to movements_new_path, notice: 'fatal error'
    end
  end

  def show
    @movement = Movement.find(params[:id])
  end

  def edit
    @movement = Movement.find(params[:id])
  end

  def update
    @movement = Movement.find(params[:id])
    @movement_params = params.require(:movement).permit(:nombre)

    if @movement.update(@movement_params)
      redirect_to movement_path(@movement.id), notice: 'movement editado con éxito'
    else
      redirect_to movement_edit_path(@movement.id), notice: 'Error'
    end
  end

  def delete
    @movement = Movement.find(params[:id])
    @movement.destroy
    redirect_to movements_index_path
  end
end

