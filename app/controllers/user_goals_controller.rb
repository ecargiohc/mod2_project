class UserGoalsController < ApplicationController

    def index
        @usergoals = UserGoal.all 
    end

    def new
        @usergoal = UserGoal.new
    end

    def show
        # @usergoal = UserGoal.find(params[:id])
    end
    
    def create
        @usergoal = UserGoal.create(usergoals_params)
        redirect_to usergoals_path(@usergoal)
    end

    def update
        @usergoal = UserGoal.find(params[:id])
        @usergoal.update(usergoals_params)
        redirect_to usergoals_path(@usergoal)
    end
  
    private
  
    def usergoals_params
      params.require(:usergoal).permit(:description, :goal_date, :goal_id, :user_id)
    end
end
