class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :artist_id
      t.datetime :release_date
      t.integer :playlist_id

      t.timestamps
    end
  end
end
