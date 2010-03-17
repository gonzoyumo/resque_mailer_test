class Notifier < ActionMailer::Base

  def password_reset_instructions()
    recipients  "recipient@exemple.com"
    from        "do_not_reply@exemple.com"
    sent_on     Time.now
    subject    "test resque_mailer"
    body       :edit_password_reset_url => "www.exemple.com/reset_password_url"
  end

end
