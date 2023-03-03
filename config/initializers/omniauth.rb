# config/initializers/omniauth.rb

require "rspotify/oauth"

Rails.application.config.middleware.use OmniAuth::Builder do
  client_id = "1963566c339b4a0491123250fa1da7f7"
  client_secret = "a77f63aefe3b445cac64529d78050c5c"
  #client_secret = ENV.fetch("SPOTIFY_DEV_CLIENT_SECRET")
  provider :spotify, client_id, client_secret, scope: "playlist-read-private"
end

OmniAuth.config.allowed_request_methods = [:post, :get]
