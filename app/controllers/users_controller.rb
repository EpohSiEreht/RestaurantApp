class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    authenticate!
    @user = User.new
  end

  def create
    authenticate!
    user = User.create(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to profile_path
    else
      flash[:error] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def log_in
  end

  def admin
    authenticate!
  end

  def profile
    if current_user.nil?
      authenticate!
    elsif current_user.level == 0
      redirect_to admin_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update( user_params )
    redirect_to users_path
  end

  def destroy
    User.delete(params[:id])
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :level)
  end

end
