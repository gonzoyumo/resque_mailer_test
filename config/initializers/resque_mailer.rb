# Include Resque mailer in all mailers
class ActionMailer::Base
  include Resque::Mailer
end
