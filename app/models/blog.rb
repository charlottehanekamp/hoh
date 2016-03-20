class Blog < ActiveRecord::Base
  mount_uploader :image, PhotoUploader
  enum type: [:news, :training, :extra]

  after_create :send_mail

  def send_mail
    p "send mail"
    BlogMailer.new_news_item(self)
  end
end
