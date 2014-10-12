class MessageMailer < ActionMailer::Base


  default from: "dogeup@gmail.com"

  def messag_email(user)
    @user = user
    @message = message
    mail(to: @user["email"],
          subject: "New Doge Message")
  end

  def message_email(user)
    require 'mail'
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
           to user["email"]
         from 'dogeup@gmail.com'
      subject 'testing sendmail'
         body 'testing sendmail'
    end


  end
end
