class SpotifyController < ApplicationController
  def spotify
    spotify_user = RSpotify::User.new(request.env["omniauth.auth"])
    # Now you can access user's private data, create playlists and much more

    # Access private data
    #spotify_user.country #=> "US"
    #spotify_user.email   #=> "example@email.com"

    # Check doc for more
  end
end
