class UserController < ApplicationController
  skip_before_action :require_login, only: [:create]

  def create
    # create a new user if provided
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
