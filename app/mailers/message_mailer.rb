class MessageMailer < ActionMailer::Base


  default from: "dogeup@gmail.com"

  def messag_email(user)
    @user = user
    @message = message
    mail(to: @user["email"],
          subject: "New Doge Message")
  end

  def message_email(user, message)
    require 'mail'
    recipient = User.where("id = #{message.recipient_id}")[0]
    content = message["content"]

    options = { :address              => "smtp.gmail.com",
                :port                 => 587,
                :domain               => 'your.host.name',
                :user_name            => 'dogeup@gmail.com',
                :password             => 'fancydoge',
                :authentication       => 'plain',
                :enable_starttls_auto => true  }

    Mail.defaults do
      delivery_method :smtp, options
    end

    Mail.deliver do
           to recipient.email
         from user["email"]
      subject 'New Doge Message'
         body "Hello " + recipient.name + "\n\n" + content + "\n\nFrom,\n" + user["name"] + "\n" + user["email"]
    end


  end
end
