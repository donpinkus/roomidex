Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'OMNIAUTH_PROVIDER_KEY', 'OMNIAUTH_PROVIDER_SECRET'
end
