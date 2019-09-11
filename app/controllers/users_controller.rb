class UsersController < ApplicationController
    
    def index
    end

    def new
        @user = User.new
    end

    def show 
        @user = User.find(user_params)
        # redirect_to user_path
    end

    def edit
        @user = User.find(user_params)
    end

    # def update
    #     @user = User.

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path
        else
            redirect_to new_user_path
        end
    end

private

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end

end
