class UsersController < ApplicationController
    
    def index
        @users = User.all
    end
    
    def userlogs
        @logs = Log.where(user_id: @current_user)
        @user_logs = Log.where(user_id: @current_user)
    end

    def oneusergoals
        @users_goals = UserGoal.where(user_id: @current_user)
        # @oneusergoals = UserGoal.where(user_id: @current_user)
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
