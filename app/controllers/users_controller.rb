class UsersController < ApplicationController
  before_action :run_user

  def index
    @users = User.all
  end

  def new
  end

  def create
    @user = User.create(user_params)

    redirect_to @user
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)

    redirect_to @user
  end

  def destroy
    @user.destroy

    redirect_to users_path
  end

  private

  def run_user
    if params[:id] != nil
      @user = User.find(params[:id])
    else
      @user = User.new
    end
  end

  def user_params
    params.require(:user).permit(:name, dragons_attributes: [[:name]])
  end
end
