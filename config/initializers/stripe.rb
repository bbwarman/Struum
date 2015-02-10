Rails.configuration.stripe = {
  :publishable_key => 'pk_test_m3D1FQ5rijEogcPhllFD8xdR',
  :secret_key      => 'sk_test_pEuTbjB5ln27gXH2lV9UG3xT'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]

Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]