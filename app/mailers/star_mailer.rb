# coding: utf-8
class StarMailer < ActionMailer::Base
  default from: "Gistar Team <noreply@gist-mail.herokuapp.com>"

  def popular(user)
    @gists = Gist.where("created_at >= ?", Time.zone.today.beginning_of_day).order("count DESC").limit(10)
    mail to: user.email, subject: 'Popular' if @gists.size > 0
  end
end
