Rails.configuration.stripe = {
  :publishable_key => ENV['publishable_key'],
  :secret_key      => ENV['Secret_key']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]