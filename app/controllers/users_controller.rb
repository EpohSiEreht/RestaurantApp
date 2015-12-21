class UsersController < ApplicationController


  def new

    @user = User.new
  end

  def create
    
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
    authenticate!
    if current_user.level == 0
      redirect_to admin_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :level)
  end

end
