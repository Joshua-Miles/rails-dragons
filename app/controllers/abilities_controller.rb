class AbilitiesController < ApplicationController
  before_action :select_ability, only: [:show, :edit, :destroy, :update]

  def index
    @abilities = Ability.all
  end

  def show
  end

  def new
    @ability = Ability.new
  end

  def create
    @ability = Ability.create(ability_params)
    redirect_to ability_path(@ability)
  end

  def edit
  end

  def update
    @ability.update(ability_params)
    redirect_to ability_path(@ability)
  end

  def select_ability
    @ability = Ability.find(params[:id])
  end

  def destroy
    @ability.destroy

    redirect_to abilities_path
  end

  private

  def ability_params
    params.require(:ability).permit(:name, :type, dragon_ids:[])
  end

end
