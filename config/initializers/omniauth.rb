Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :github, Rails.application.secrets.github_api_key, Rails.application.secrets.github_api_secret
  # ENV['8db2a70db3cf806c6a2a'], ENV['137b382e59d13b7a74d7a7e12ddffbc3f246efee']
end