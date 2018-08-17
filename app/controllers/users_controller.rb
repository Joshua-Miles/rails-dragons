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
    byebug
    @user = User.update(user_params)

    redirect_to @user
  end

  def destroy
    @user = User.destroy(user_params)

    redirect_to users_pathsd  end

  private

  def run_user
    if params[:id] != nil
      @user = User.find(params[:id])
    else
      @user = User.new
    end
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
