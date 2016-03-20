class BlogMailer < ApplicationMailer
  default to: Proc.new { User.pluck(:email) },
          from: 'info@hoh-archery.nl'

  def new_news_item(news)
    @news = news
    mail(subject: 'Nieuws')
    p "mail send"
  end
end
