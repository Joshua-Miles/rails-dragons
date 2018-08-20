class ApplicationController < ActionController::Base

    before_action :define_session_message, :define_logged_in_user

    def define_session_message
        @session_message = flash[:notice]
    end

    def define_logged_in_user
        if(session[:logged_in_user_id])
            @logged_in_user = User.find(session[:logged_in_user_id])
        else
            @logged_in_user = User.new
        end
    end

end
