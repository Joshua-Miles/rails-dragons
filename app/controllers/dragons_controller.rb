class DragonsController < ApplicationController
  before_action :select_dragon, only: [:show, :edit, :update, :destroy]

  def index
    @dragons = Dragon.all
  end

  def show
  end

  def new
  end

  def create
    @dragon = Dragon.create(dragon_params)
    redirect_to dragon_path(@dragon)
  end

  def edit
  end

  def update
    @dragon.update(dragon_params)
    redirect_to dragon_path(@dragon)

  end

  def destroy
    @dragon.destroy
    redirect_to dragons_path
  end

  def select_dragon
    @dragon = Dragon.find(params[:id])
  end

  private

  def dragon_params
    params.require(:dragon).permit(:name,:user_id)
  end

end
