Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github,"f6b0566a7c040f6f2185","d1aacd1c86c72136146029c5e9d51e85549701a3"
  else
    provider :github,
    Rails.application.credentials.github[:f6b0566a7c040f6f2185]
    Rails.application.credentials.github[:d1aacd1c86c72136146029c5e9d51e85549701a3]
  end
end