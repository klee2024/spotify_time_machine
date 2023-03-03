class CurrentController < ApplicationController
  def index

    @me = RSpotify::User.find("kl257")
    @playlists = @me.playlists

    render({ :template => "current/index.html.erb" })
  end
end
