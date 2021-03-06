class SessionsController < ApplicationController

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "Loged in Successfully"
            redirect_to user
        else
            flash.now[:alert] = "Wrong credentials"
            render 'new'
        end
    end

    def new 
    end

    def destroy
        session[:user_id] = nil 
        flash[:notice] = "Logged out"
        redirect_to root_path
    end

end