class PlaylistsController < ApplicationController
  def index
    matching_playlists = Playlist.all

    @list_of_playlists = matching_playlists.order({ :created_at => :desc })

    render({ :template => "playlists/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_playlists = Playlist.where({ :id => the_id })

    @the_playlist = matching_playlists.at(0)

    render({ :template => "playlists/show.html.erb" })
  end

  def create
    the_playlist = Playlist.new
    the_playlist.playlist_id = params.fetch("query_playlist_id")
    the_playlist.user_id = params.fetch("query_user_id")
    the_playlist.playlist_url = params.fetch("query_playlist_url")
    the_playlist.deleted_at = params.fetch("query_deleted_at")
    the_playlist.title = params.fetch("query_title")
    the_playlist.artwork = params.fetch("query_artwork")

    if the_playlist.valid?
      the_playlist.save
      redirect_to("/playlists", { :notice => "Playlist created successfully." })
    else
      redirect_to("/playlists", { :alert => the_playlist.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_playlist = Playlist.where({ :id => the_id }).at(0)

    the_playlist.playlist_id = params.fetch("query_playlist_id")
    the_playlist.user_id = params.fetch("query_user_id")
    the_playlist.playlist_url = params.fetch("query_playlist_url")
    the_playlist.deleted_at = params.fetch("query_deleted_at")
    the_playlist.title = params.fetch("query_title")
    the_playlist.artwork = params.fetch("query_artwork")

    if the_playlist.valid?
      the_playlist.save
      redirect_to("/playlists/#{the_playlist.id}", { :notice => "Playlist updated successfully."} )
    else
      redirect_to("/playlists/#{the_playlist.id}", { :alert => the_playlist.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_playlist = Playlist.where({ :id => the_id }).at(0)

    the_playlist.destroy

    redirect_to("/playlists", { :notice => "Playlist deleted successfully."} )
  end
end