class WelcomeMailer < ApplicationMailer
  default from: 'relsohod@gmail.com'

  def welcome_letter(user)
    @user = user
    mail to: user.email,
         subject: "Symphony loves #{Translit.convert(user.first_name.capitalize)}!"
  end
end
