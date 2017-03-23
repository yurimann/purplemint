class UserMailer < ApplicationMailer
  default from: 'bitmakersandbox@gmail.com'

  def welcome_email(user)
    @user = user
    @url = "http://www.purplemintcatering.com/login"
    mail(to: @user.email, subject: 'Welcome to Purple Mint Catering')
  end

  def reset_password_email(user)
    @user = User.find(user.id)
    @url = edit_password_reset_url(@user.reset_password_token)
    mail(to: user.email,
         subject: "Reset your purplemintcatering.com password")
  end
end
