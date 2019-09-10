class AchievementsController < ApplicationController

    def index
        @achievements = Achievement.all 
    end

    def new
    end

    def show
        @achievement = Achievement.find(params[:id])
    end
end
