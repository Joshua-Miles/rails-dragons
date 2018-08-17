class AbilitiesController < ApplicationController
  before_action :set_ability, only: [:show, :edit, :update, :destroy]

  # GET /abilities
  def index
    @abilities = Ability.all
  end

  # GET /abilities/1
  def show
  end

  # GET /abilities/new
  def new
    @ability = Ability.new
  end

  # GET /abilities/1/edit
  def edit
  end

  # POST /abilities
  def create
    @ability = Ability.new(ability_params)

    @ability.dragons << Dragon.find(params[:ability][:dragon_id])


    if @ability.save
      redirect_to @ability
    else
      render :new
    end
  end

  # PATCH/PUT /abilities/1
  def update
    if @ability.update(ability_params)
      redirect_to @ability
    else
      render :edit
    end
  end

  # DELETE /abilities/1
  def destroy
    @ability.destroy
      redirect_to abilities_path
  end

  private
    def set_ability
      @ability = Ability.find(params[:id])
    end

    def ability_params
      params.require(:ability).permit(:name)
    end
end
