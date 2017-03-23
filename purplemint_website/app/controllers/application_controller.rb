class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
