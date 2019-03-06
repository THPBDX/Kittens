# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['PUBLIC_KEY_MAIL'],
#   :password => ENV['SECRET_KEY_MAIL'],
#   :domain => 'kittens-eshop.com',
#   :address => 'smtp.mailjet.com',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }