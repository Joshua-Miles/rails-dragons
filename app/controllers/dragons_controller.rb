class DragonsController < ApplicationController
  before_action :run_dragon

  def index
    @dragons = Dragon.all
  end

  def new
    @all_users = User.all.map {|user| [user.name, user.id]}
  end

  def create
    @dragon = Dragon.create(dragon_params)

    redirect_to @dragon
  end

  def show
  end

  def edit
    
    @all_users = User.all.map {|user| [user.name, user.id]}
  end

  def update
    @dragon.update(dragon_params)

    redirect_to @dragon
  end

  def destroy
    @dragon.destroy

    redirect_to dragons_path
  end

  private

  def run_dragon
    if params[:id] != nil
      @dragon = Dragon.find(params[:id])
    else
      @dragon = Dragon.new
    end
  end

  def dragon_params
    params.require(:dragon).permit(:name, :user_id)
  end
end
