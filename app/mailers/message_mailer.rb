class MessageMailer < ActionMailer::Base
  default from: "no-reply@dogemail.com"

  def message_email(user, sender, message)
    @user = user
    @sender = sender
    @message = message
    mail(to: @user.email,
          subject: "New Doge Message")
  end
end
