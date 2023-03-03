Rails.application.routes.draw do

  # Routes for the Playlist track resource:

  # CREATE
  post("/insert_playlist_track", { :controller => "playlist_tracks", :action => "create" })

  # READ
  get("/playlist_tracks", { :controller => "playlist_tracks", :action => "index" })

  get("/playlist_tracks/:path_id", { :controller => "playlist_tracks", :action => "show" })

  # UPDATE

  post("/modify_playlist_track/:path_id", { :controller => "playlist_tracks", :action => "update" })

  # DELETE
  get("/delete_playlist_track/:path_id", { :controller => "playlist_tracks", :action => "destroy" })

  #------------------------------

  # Routes for the Track resource:

  # CREATE
  post("/insert_track", { :controller => "tracks", :action => "create" })

  # READ
  get("/tracks", { :controller => "tracks", :action => "index" })

  get("/tracks/:path_id", { :controller => "tracks", :action => "show" })

  # UPDATE

  post("/modify_track/:path_id", { :controller => "tracks", :action => "update" })

  # DELETE
  get("/delete_track/:path_id", { :controller => "tracks", :action => "destroy" })

  #------------------------------

  # Routes for the Playlist resource:

  # CREATE
  post("/insert_playlist", { :controller => "playlists", :action => "create" })

  # READ
  get("/playlists", { :controller => "playlists", :action => "index" })

  get("/playlists/:path_id", { :controller => "playlists", :action => "show" })

  # UPDATE

  post("/modify_playlist/:path_id", { :controller => "playlists", :action => "update" })

  # DELETE
  get("/delete_playlist/:path_id", { :controller => "playlists", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create" })

  # EDIT PROFILE FORM
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })

  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })

  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })

  # SIGN OUT
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })

  #------------------------------

  # home page
  get("/", { :controller => "home", :action => "show_home" })

  get("/playlist_archive", { :controller => "archive", :action => "index" })

  #get("/playlist_show", { :controller => "archive", :action => "show" })

  get("/current_playlists", { :controller => "current", :action => "index" })
end
