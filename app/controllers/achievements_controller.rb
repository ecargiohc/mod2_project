class AchievementsController < ApplicationController

    def index
        @achievements = Achievement.all 
    end

    def new
    end

    def show
        @achievement = Achievement.find_by(params[:id])
    end
end
