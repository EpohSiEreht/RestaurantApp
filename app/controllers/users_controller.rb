class UsersController < ApplicationController

  def new
    @user = User.new
    @current_user = User.find(session[:user_id])
  end

  def create
    User.create( user_params )
    redirect_to profile_path
  end

  def log_in
  end

  def admin
    @current_user = User.find(session[:user_id])
  end

  def profile
    @current_user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
