class UsersController < ApplicationController

  def index
  end

  def login
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id]=user.id
      redirect_to '/users/login'
    else
      flash[:register_errors]=user.errors.full_messages
      redirect_to '/'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:email, :roll_no, :password, :password_confirmation)
    end
end
