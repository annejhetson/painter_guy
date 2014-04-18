class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(user)
    @user = user
    @greeting = "Hi"
    @admin = Admin.find(1)

    mail to: @user.email, cc: @admin.email, subject: "Sign up confirmation"
  end
end
