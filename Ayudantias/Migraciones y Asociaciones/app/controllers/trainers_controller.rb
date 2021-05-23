class TrainersController < ApplicationController
  def new
    @trainer = Trainer.new
  end

  def index
    @trainers = Trainer.all
  end

  def create
    @trainer_params = params.require(:trainer).permit(:nombre)
    @trainer = Trainer.create(@trainer_params)

    if @trainer.save
      redirect_to trainers_index_path, notice: 'Trainer has been created'
    else
      redirect_to trainers_new_path, notice: 'fatal error'
    end
  end

  def show
    @trainer = Trainer.find(params[:id])
  end

  def edit
    @trainer = Trainer.find(params[:id])
  end

  def update
    @trainer = Trainer.find(params[:id])
    @trainer_params = params.require(:trainer).permit(:nombre)

    if @trainer.update(@trainer_params)
      redirect_to trainer_path(@trainer.id), notice: 'trainer editado con éxito'
    else
      redirect_to trainer_edit_path(@trainer.id), notice: 'Error'
    end
  end

  def delete
    @trainer = Trainer.find(params[:id])
    @trainer.destroy
    redirect_to trainers_index_path
  end
end
