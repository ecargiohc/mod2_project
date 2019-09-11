class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
    end

    def show
        @comment = Comment.find_by(params[:id])
    end

    def edit
        @comment = Comment.find_by(params[:id])
    end

    def create
        @comment = Comment.create(comment_params)
        @comment.user_id = session[:user_id]
        @comment.save
        # session[:user_id]
        # redirect_to "/comment#{@userpath}"
        # byebug
        redirect_to comment_path(@comment)
    end

    def update
        # @user
        # @log
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        redirect_to comment_path(@comment)
    end

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy
        #flash[:notice] = "Song deleted."
        redirect_to comment_path #beware of plural or singular, depending on if want to view all or specific!!!
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:user_id, :title, :log_id, :entry)
    end
end
