OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1554921041393754', 'd40162fceaf9bb7fadb96ef785c114a0'
end