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
        # @user_logs = Log.where(user_id: @current_user)
        # @all_users_goals = UserGoal.find_each
        @users_goals = UserGoal.where(user_id: @current_user)
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
        # byebug

        # redirect_to user_goal_path(@usergoal)
        redirect_to oneusergoals_path(@usergoal)
    end

    def update
        @usergoal = UserGoal.find(params[:id])
        @usergoal.update(usergoal_params)
        if @usergoal.save
            redirect_to usergoal_path
        else
            render :update
        end
        # @usergoal = UserGoal.find(params[:id])
        # @usergoal.update(usergoal_params)
        # redirect_to user_goal_path(@usergoal)
    end

    def destroy 
        # byebug
        @usergoal = UserGoal.find_by(params[:id])
        # @usergoal = UserGoal.find_by(user_id: params[:id])
        @usergoal.destroy
        # flash[:notice] = "Goal deleted."
        redirect_to oneusergoals_path
        # redirect_to users_new
        # redirect_to user_goal_path
        # redirect_to users_path #beware of plural or singular, depending on if want to view all or specific!!!
    end
  
    private
  
    def usergoal_params
      params.require(:user_goal).permit(:description, :start_date, :goal_date, :goal_id, :user_id)
    end
end
