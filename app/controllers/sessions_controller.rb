class SessionsController < ApplicationController

  #login page (GET)
  def new
  end

  #set the session (POST)
  def create

     @user = User.authenticate(params[:user][:email], params[:user][:password])

     if @user
      session[:user_id] = @user.id
      flash[:success] = "Login Successful!"
      redirect_to root_path

     else
      flash[:danger] = "Invalid Credentials"
      render :new
    end

  end

  #delete the session (DELETE typically)
  def destroy
    session[:user_id] = nil
    flash[:info] = "User has logged out"
    redirect_to login_path
  end

end