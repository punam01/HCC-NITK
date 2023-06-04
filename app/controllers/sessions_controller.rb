class SessionsController < ApplicationController

  def new
    @user = User.new
  end
  def create
    user=User.find_by(email:login_params[:email])
    if user && user.authenticate(login_params[:password])
      session[:user_id]=user.id
      redirect_to '/patient_dashboard/index'
    else
      flash[:login_errors]=user.errors.full_messages
      redirect_to '/users/index'
    end
  end

  private
    def login_params
      params.require(:login).permit(:email, :password)
    end
end
