class DragonsController < ApplicationController
  before_action :set_dragon, only: [:show, :edit, :update, :destroy]

  # GET /dragons
  def index
    @dragons = Dragon.all
  end

  # GET /dragons/1
  def show
  end

  # GET /dragons/new
  def new
    @dragon = Dragon.new
  end

  # GET /dragons/1/edit
  def edit
  end

  # POST /dragons
  def create
    @dragon = Dragon.new(dragon_params)
    # @dragon.abilities << Ability.find(params[:dragon][:ability_id])
    # byebug

    if @dragon.save
      redirect_to @dragon
    else
      render :new
    end
  end

  # PATCH/PUT /dragons/1
  def update
    if @dragon.update(dragon_params)
      redirect_to @dragon
    else
      render :edit
    end
  end

  # DELETE /dragons/1
  def destroy
    @dragon.destroy
    redirect_to dragons_path
  end

  private
    def set_dragon
      @dragon = Dragon.find(params[:id])
    end

    def dragon_params
      # byebug
      params.require(:dragon).permit(:name, :user_id, ability_ids:[])
    end
end
