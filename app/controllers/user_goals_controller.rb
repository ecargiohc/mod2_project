class UserGoalsController < ApplicationController

    def index
        @usergoals = UserGoal.all 
    end

    def new
        @usergoal = UserGoal.new
    end

    def edit
        @usergoal = UserGoal.find_by(params[:id])
        
    end

    def show
        @usergoal = UserGoal.find_by(params[:id])
    end
    
    def create
        # @usergoal = UserGoal.create(usergoal_params)
        @usergoal = UserGoal.create( {
            user_id: session[:user_id], start_date: params[:start_date],
            goal_date: params[:goal_date], 
            description: params[:description],
        })
        # byebug
        # @user_goal.user_id = session[:user_id]
        # @user_goal.save
        redirect_to user_goal_path
    end

    def update
        @usergoal = UserGoal.find(params[:id])
        @usergoal.update(usergoal_params)
        redirect_to user_goal_path(@usergoal)
    end
  
    private
  
    def usergoal_params
      params.require(:user_goal).permit(:description, :start_date, :goal_date, :goal_id, :user_id)
    end
end
