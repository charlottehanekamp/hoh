# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey',
  :password => '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',
  :domain => 'hoh-archery.nl',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
