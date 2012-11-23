class StarMailer < ActionMailer::Base
  default from: "from@example.com"

  def popular(user)
    @gists = Gist.where("created_at >= ?", Time.zone.today).order("count DESC").limit(10)
    mail to: user.email, subject: 'Popular'
  end
end
