class UsersController < ApplicationController
  before_action :select_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
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

  def select_user
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
