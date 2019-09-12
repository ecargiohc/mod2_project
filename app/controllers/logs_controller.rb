class LogsController < ApplicationController

    def index
        @logs = Log.all 
    end

    def new 
        @log = Log.new
    end

    def show
        @log = Log.find(params[:id])
    end

    def edit
        @log = Log.find_by(params[:id])
    end

    def create
        @log = Log.create({
            user_id: params["log"][:user_id],
            user_goal_id: params["log"][:user_goal_id],
            title: params["log"][:title],
            date: params["log"][:date], 
            entry: params["log"][:entry]
        })
        # @log = Log.new(log_params)
        # byebug
        # @log.save
        # redirect_to "/user_goal#{@userpath}"
        redirect_to log_path(@log)
    end

    def update
        @log = Log.find(params[:id])
        @log.update(log_params)
        redirect_to log_path(@log)
    end

    def destroy 
        @log = Log.find(params[:id])
        @log.destroy
        #flash[:notice] = "Song deleted."
        redirect_to log_path #beware of plural or singular, depending on if want to view all or specific!!!
    end
  
    private
  
    def log_params
      params.require(:log).permit(:title, :entry, :date, :user_id, :user_goal_id)
    end
end
