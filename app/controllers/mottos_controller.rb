class MottosController < ApplicationController

    def index
        @mottos = Motto.all
    end

    def new
        @motto = Motto.new
    end

    def show
        @motto = Motto.find(params[:id])
        #find_by vs. find; when does one work, when does the other not?!
    end

    def edit
        @motto = Motto.find_by(params[:id])
    end

    def create
        @motto = Motto.create(motto_params)
        # @motto.user_id = session[:user_id]
        # @motto.save
        # session[:user_id]
        # redirect_to "/motto#{@userpath}"
        # byebug
        redirect_to motto_path(@motto)
    end

    def update
        # @user
        # @log
        @motto = Motto.find(params[:id])
        @motto.update(motto_params)
        redirect_to motto_path(@motto)
    end

    def destroy 
        @motto = Motto.find(params[:id])
        @motto.destroy
        #flash[:notice] = "Song deleted."
        redirect_to motto_path #beware of plural or singular, depending on if want to view all or specific!!!
    end
  
    private
  
    def motto_params
      params.require(:motto).permit(:phrase)
    end
end
