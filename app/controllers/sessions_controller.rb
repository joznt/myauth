class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome to MYAuth"
      redirect_to root_path
    else
      flash.now[:danger] = "Can't Login"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = "You're Offline"
    redirect_to root_path
  end
end
