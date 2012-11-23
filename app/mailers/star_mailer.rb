class StarMailer < ActionMailer::Base
  default from: "from@example.com"

  def popular(user)
    mail to: user.email, subject: 'Popular'
  end
end
