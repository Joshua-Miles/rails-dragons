class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def create
        user = User.new(user_params)
        redirect_to user_path
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
        @dragon_options = Dragon.all.map { |dragon| [dragon.name, dragon.id] }
    end

    def new
        @user = User.new
        @dragon_options = Dragon.all.map { |dragon| [dragon.name, dragon.id] }
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        @user.save
        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
