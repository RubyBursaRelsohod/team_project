# Preview all emails at http://localhost:3000/rails/mailers/welcome_mailer
class WelcomeMailerPreview < ActionMailer::Preview
  def welcome_letter
    WelcomeMailer.welcome_letter(User.first)
  end
end
