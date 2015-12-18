class UsersController < ApplicationController


  def new
    authenticate!
    @user = User.new
    @current_user = User.find(session[:user_id])
  end

  def create
    authenticate!
    User.create( user_params )
    redirect_to profile_path
  end

  def log_in
  end

  def admin
    authenticate!
    @current_user = User.find(session[:user_id])
  end

  def profile
    authenticate!
    @current_user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
