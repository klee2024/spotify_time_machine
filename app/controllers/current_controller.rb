class CurrentController < ApplicationController

  # need to change this to be based on the user
  def index
    @me = RSpotify::User.find("gdc44")
    @playlists = @me.playlists

    render({ :template => "current/index.html.erb" })
  end

  def show_playlist
    @playlist_id = params.fetch("playlist_id")
    @playlist = RSpotify::Playlist.find_by_id(@playlist_id)
    render({ :template => "current/show_playlist.html.erb" })

  end
end
