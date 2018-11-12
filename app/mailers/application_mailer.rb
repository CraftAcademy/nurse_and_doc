class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  mail(to: User.email, subject: 'user invite')
end
