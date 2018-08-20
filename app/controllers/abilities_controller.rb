class AbilitiesController < ApplicationController
  before_action :run_ability

  def index
    @abilities = Ability.all
  end

  def new
  end

  def create
    @ability = Ability.create(ability_params)

    redirect_to @ability
  end

  def show
  end

  def edit
  end

  def update
    @ability.update(ability_params)

    redirect_to @ability
  end

  def destroy
    @ability.destroy

    redirect_to abilities_path
  end

  private

  def run_ability
    if params[:id] != nil
      @ability = Ability.find(params[:id])
    else
      @ability = Ability.new
    end
  end

  def ability_params
    params.require(:ability).permit(:power)
  end
end
