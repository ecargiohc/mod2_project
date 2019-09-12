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
        #byebug
        # @all_users_goals = UserGoal.find_each
        
        @all_my_usergoals = UserGoal.where(user_id: params[:id])
        # @foundUserGoals = @foundUser.goals
        
        #@usergoal = UserGoal.find(params[:id]) sometimes this works, sometimes the other 'find_by' works :// ?!!??!! 
    end
    
    def create
        @usergoal = UserGoal.create(
            user_id: session[:user_id], 
            goal_id: params["user_goal"][:goal_id],
            start_date: params["user_goal"][:start_date],
            goal_date: params["user_goal"][:goal_date], 
            description: params["user_goal"][:description]
        )
        # @usergoal = UserGoal.create(user: params[:user_id],
        #                 goal: params[:goal_id], 
        #                 start_date: params[:start_date],
        #                 goal_date: params[:goal_date],
        #                 description: params[:description])

        # byebug
        redirect_to user_goal_path(@usergoal)
        # redirect_to user_goal_path(@usergoal.id)
    end

    def update
        @usergoal = UserGoal.find(params[:id])
        @usergoal.update(usergoal_params)
        redirect_to user_goal_path(@usergoal)
    end

    def destroy 
        # byebug
        @usergoal = UserGoal.find_by(user_id: params[:id])
        @usergoal.destroy
        # flash[:notice] = "Goal deleted."
        redirect_to user_goal_path #beware of plural or singular, depending on if want to view all or specific!!!
    end

  
    private
  
    def usergoal_params
      params.require(:user_goal).permit(:description, :start_date, :goal_date, :goal_id, :user_id)
    end
end
