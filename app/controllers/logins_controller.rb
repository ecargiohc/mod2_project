class LoginsController < ApplicationController
    
    def new
    end

    def create
        @user = authenticate(params[:username], params[:password]) 
        if @user != nil
            log_in(@user)
            redirect_to users_path
        else
            # redirect_to signin_path
            redirect_to users_path(@user)
        end
    end

    def destroy
        log_out
        redirect_to signin_path
    end

end 