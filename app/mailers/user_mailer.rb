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

  def send_comment(object)
    @object = object
    @comment = @object.comment
    @email = @object.email
    @name = @object.name

    mail to: "admin@admin.com", subject: "Got an inquiry for your web site"
  end

  def booking_confirmation(object)
    @object = object
    @comment = @object.comment
    @email = @object.email
    @name = @object.name

    mail to: "admin@admin.com", subject: "Got an inquiry for your web site"
  end

end
