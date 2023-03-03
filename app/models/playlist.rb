# == Schema Information
#
# Table name: playlists
#
#  id           :integer          not null, primary key
#  artwork      :string
#  deleted_at   :datetime
#  playlist_url :string
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  playlist_id  :string
#  user_id      :integer
#
class Playlist < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })

  has_many(:playlist_tracks, { :class_name => "PlaylistTrack", :foreign_key => "playlist_id", :dependent => :destroy })

  has_many(:tracks, { :through => :playlist_tracks, :source => :track })
end
