class CreatePlaylistTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_tracks do |t|
      t.integer :playlist_id
      t.integer :track_id

      t.timestamps
    end
  end
end
