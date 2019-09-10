class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :current_user

    def log_in(user)
        session[:user_id] = user.id 
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil? 
    end

    def authenticate(username, password)
        @user = User.new
        @user = User.find_by(username: username, password: password)
        puts @user
        if @user != nil
            @user
        else
            nil
        end
    end
end
