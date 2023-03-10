class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :spotify_user_id
      t.string :access_token
      t.string :refresh_token

      t.timestamps
    end
  end
end
