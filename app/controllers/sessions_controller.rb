class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by({ name: params[:name] })
    if @user
      session[:logged_in_user_id] = @user.id 
      flash[:notice] = 'Login Successful!'
      redirect_to dragons_path
    else
      flash[:notice] = "Could not find '#{params[:name]}'"
      redirect_to new_session_path
    end
  end

end
