class AuthUsersController < ApplicationController
    def create
    @auth_user = current_user  
    # other code
  end

  def update
    @auth_user = AuthUser.find(params[:id])
    @auth_user.update(user_params)
    # other code
  end

  private

  def user_params
    params.require(:auth_user).permit(:email, :roles)
  end
end
