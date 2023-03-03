class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :playlist_id
      t.integer :user_id
      t.string :playlist_url
      t.datetime :deleted_at
      t.string :title
      t.string :artwork

      t.timestamps
    end
  end
end
