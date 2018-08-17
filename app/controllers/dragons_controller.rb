class DragonsController < ApplicationController
  def index
    @dragons = Dragon.all
  end

  def new
    @dragon = Dragon.new
  end

  def create
    @dragon = Dragon.create(dragon_params)
    redirect_to dragon_path(@dragon)
  end

  def show
    @dragon = Dragon.find(params[:id])
  end

  def edit
    @dragon = Dragon.find(params[:id])
  end

  def update
    @dragon = Dragon.find(params[:id])
    @dragon.update(dragon_params)
    redirect_to dragon_path(@dragon)
  end

  def destroy
    @dragon = Dragon.find(params[:id])
    @dragon.destroy
    redirect_to dragons_path
  end

  private

  def dragon_params
    params.require(:dragon).permit(:name, :age, :color, :user_id)
  end

end
