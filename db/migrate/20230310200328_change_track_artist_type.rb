class ChangeTrackArtistType < ActiveRecord::Migration[6.0]
  def change
    remove_column :tracks, :artist_id
    add_column :tracks, :artist, :string
  end
end
