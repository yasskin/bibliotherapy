class UserMailer < ApplicationMailer

  default from: "donotreply@bibliotherapy.com"

  def signup_confirmation(user)
    @user = user

    mail to: user.email, subject: "Signup Confirmation"
  end

end
