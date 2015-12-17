class SessionsController < ApplicationController

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      # current_user
      session[:user_id]=user.id #:user_id is a namespace
      redirect_to profile_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id]=nil
    redirect_to root_path
  end
  
end
