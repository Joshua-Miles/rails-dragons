class DragonsController < ApplicationController
  before_action :set_dragon, only: [:show, :edit, :update, :destroy]

  def index
    @dragons = Dragon.all
  end

  def show
  end

  def new
    @dragon = Dragon.new
  end

  def edit
  end

  def create
    @dragon = Dragon.new(dragon_params)

      if @dragon.save
        redirect_to @dragon
      else
        render :new
      end
  end


  def update
      if @dragon.update(dragon_params)
        redirect_to @dragon
      else
        render :edit
      end
  end

  def destroy
    @dragon.destroy

    redirect_to dragons_path

  end

  private

    def set_dragon
      @dragon = Dragon.find(params[:id])
    end

    def dragon_params
      params.require(:dragon).permit(:name, :user_id)
    end
end
