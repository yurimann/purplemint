class SessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      flash[:success] = "Successfully logged in!"
      redirect_to root_path
    else
      flash.now[:warning] = "Email and/or password is incorrect."
      render 'new'
    end
  end

  def destroy
    logout
    flash[:success] = 'Logged out!'
    redirect_to root_path
  end
end
