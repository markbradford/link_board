class UserController < ApplicationController

  def new

  end

  def create
    User.create(user_params)
    redirect_to login_path
  end

  private

  def user_params
    params.require(:user).permit(:name,:email)
end
end