Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '475554302502752', '602e200c4df42e11f9327ce7f4ba28ce'
end
